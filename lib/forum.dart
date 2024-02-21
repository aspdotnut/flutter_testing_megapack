
//////////////////////////////////////////////  GAME PLAN  //////////////////////////////////////////////
//                                                                                                     //
// - Interact with database to store and retrieve posts and comments                      | DONE       //
// - Create a way to view all posts and comments                                          | DONE       //
// - Use bloc to manage user state                                                        | SCRAPPED   //
// - Implement random email and password kitchen to use as actual login/register system   | DONE       //
// - Create post button to add new post or comment (Inline?)                              | DONE       //
// - Delete button on own content                                                         | DONE       //
// - Edit button on own content                                                           | DONE       //
// - Show created date (suffix with "(edited)" when isEdited is true)                     | DONE       //
//                                                                                                     //
//////////////////////////////////////////////  GAME PLAN  //////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'dart:math';

import 'dio/forum_dio.dart';
import 'db/forum_db.dart';
import 'hash.dart';

class Forum extends StatefulWidget {

  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {

  final List<Map<String, dynamic>> _posts = [];
  final List<Map<String, dynamic>> _comments = [];
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _titleTextController = TextEditingController();
  final TextEditingController _contentTextController = TextEditingController();
  int _previousTextLength = 0;
  late int _memberId;
  int _loginState = 0;

  Map<String, String> charToIngredient = {
    'a': 'Quinoa',
    'b': 'Wasabi',
    'c': 'Turmeric',
    'd': 'Saffron',
    'e': 'Radicchio',
    'f': 'Paprika',
    'g': 'Oregano',
    'h': 'Nutmeg',
    'i': 'Mint',
    'j': 'Lemongrass',
    'k': 'Kale',
    'l': 'Jalapeno',
    'm': 'Icing Sugar',
    'n': 'Horseradish',
    'o': 'Ginger',
    'p': 'Fennel',
    'q': 'Endive',
    'r': 'Dill',
    's': 'Cilantro',
    't': 'Basil',
    'u': 'Avocado',
    'v': 'Artichoke',
    'w': 'Zucchini',
    'x': 'Yogurt',
    'y': 'Xanthan Gum',
    'z': 'Watercress',
    'A': 'Almond Milk',
    'B': 'Blackberry',
    'C': 'Cherry',
    'D': 'Durian',
    'E': 'Elderflower',
    'F': 'Fig',
    'G': 'Guava',
    'H': 'Habanero',
    'I': 'Irish Moss',
    'J': 'Jackfruit',
    'K': 'Kiwi',
    'L': 'Lavender',
    'M': 'Mango',
    'N': 'Nori',
    'O': 'Olive Oil',
    'P': 'Pomegranate',
    'Q': 'Quail',
    'R': 'Rosemary',
    'S': 'Sea Salt',
    'T': 'Tahini',
    'U': 'Umeboshi',
    'V': 'Vanilla',
    'W': 'Walnut',
    'X': 'Xigua',
    'Y': 'Yam',
    'Z': 'Za\'atar',
    '0': 'Vinegar',
    '1': 'Tamarind',
    '2': 'Squash',
    '3': 'Raspberry',
    '4': 'Quince',
    '5': 'Prune',
    '6': 'Okra',
    '7': 'Nectarine',
    '8': 'Mustard',
    '9': 'Lemon',
    '!': 'Kombucha',
    '@': 'Juniper Berry',
    '#': 'Ice Cream',
    '\$': 'Hazelnut',
    '%': 'Gouda',
    '^': 'Flaxseed',
    '&': 'Espresso',
    '*': 'Duck',
    '(': 'Cocoa',
    ')': 'Blue Cheese',
    '-': 'Apple Cider',
    '+': 'Beetroot',
    '=': 'Cranberry',
    '[': 'Date',
    ']': 'Eggplant',
    '{': 'Fig Jam',
    '}': 'Grapefruit',
    ';': 'Honey',
    ':': 'Iodized Salt',
    '\'': 'Jerky',
    '"': 'Kale Powder',
    ',': 'Lime',
    '.': 'Maple Syrup',
    '/': 'Nutmeg Powder',
    '?': 'Oregano Leaves',
    '<': 'Papaya',
    '>': 'Quinoa Flour',
    '|': 'Rye'
  };

  String _passwordToIngredients(String password) {

    return password.split('').map((char) => charToIngredient[char] ?? "Unknown").join(', ');
  }

  @override
  void initState() {

    super.initState();

    _nameTextController.addListener(() {
      _shuffleText();
      _caretPlacement();
    });
  }

  void _caretPlacement() {

    final text = _nameTextController.text;

    _nameTextController.value = _nameTextController.value.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
      composing: TextRange.empty,
    );
  }

  void _shuffleText() {

    String text = _nameTextController.text;

    if (text.isNotEmpty && text.length > _previousTextLength) {

      String lastChar = text[text.length - 1];
      String shuffledChar = _shuffle(lastChar);

      _nameTextController.removeListener(_shuffleText);

      _nameTextController.text = text.substring(0, text.length - 1) + shuffledChar;

      _nameTextController.removeListener(_shuffleText);
    }
    _previousTextLength = text.length;
  }

  String _shuffle(String char) {

    String shuffledChar;

    var rng = Random();
    int ascii = char.codeUnitAt(0);
    int newAscii = ascii + rng.nextInt(10) - 5;
    shuffledChar = String.fromCharCode(newAscii);

    return shuffledChar;
  }

  void _clearTextControllers() {

    _titleTextController.clear();
    _contentTextController.clear();
  }

  void _getContent() async {

    var posts = await getPosts();
    var comments = await getComments();

    setState(() {
      _posts.clear();
      _posts.addAll(posts);
      _comments.clear();
      _comments.addAll(comments);
    });
  }

  void _onRegister() async {

    if (_nameTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty) {

      var existingUser = await getMember(_nameTextController.text);

      if (existingUser) {
        _accountDialog("User already exists", "Please pick a different name");
        return;
      }

      String ingredientPassword = _passwordToIngredients(_passwordTextController.text);

      _updateRegisterStatus(ingredientPassword);

      _register(_nameTextController.text, ingredientPassword);
    }
  }

  void _updateRegisterStatus(String ingredientPassword){

    setState(() {
      _accountDialog("Password generated", "Please log in with \"$ingredientPassword\"");
    });
  }

  void _onLogin() async {

    if (_nameTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty) {

      _login(_nameTextController.text, _passwordTextController.text);

      _nameTextController.clear();
      _passwordTextController.clear();
    }
  }

  void _register(String name, String password) async {

    var hashedPassword = hashPassword(password);

    var result = await addMember(name, hashedPassword);

    if (result) {
      _login(name, password);
    }
  }

  void _login(String name, String password) async {

    var hashedPassword = hashPassword(password);

    var memberId = await authMember(name, hashedPassword);

    setState(() {
      _memberId = memberId;
    });

    if (memberId != null && _memberId > 0) {
      setState(() {
        _loginState = 1;
      });
    }
    else {
      _accountDialog("Login failed", "Please try again");
      setState(() {
        _loginState = 0;
      });
    }
  }

  void _accountDialog(String title, String content) {

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: Text(title),
          content: Text(content),

          actions: <Widget>[
            TextButton(

              onPressed: () {
                Navigator.of(context).pop();
              },

              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _addPost() async {

    var title = _titleTextController.text;
    var content = _contentTextController.text;

    await addPost(_memberId, title, content);

    _clearTextControllers();
  }

  void _addPostDialog() async {

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: const Text('New Post'),
          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
                controller: _titleTextController,
              ),

              const SizedBox(height: 20),

              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Content',
                ),
                controller: _contentTextController,
              ),
            ],
          ),

          actions: <Widget>[
            TextButton(

              onPressed: () {
                _clearTextControllers();
                Navigator.of(context).pop();
              },

              child: const Text('Cancel'),
            ),

            TextButton(

              onPressed: () {
                _addPost();
                Navigator.of(context).pop();
              },

              child: const Text('Post'),
            ),
          ],
        );
      },
    );
  }

  void _editPost(int postId) async {

    var title = _titleTextController.text;
    var content = _contentTextController.text;

    await updatePost(title, content, postId);

    _clearTextControllers();
  }

  void _editPostDialog(int postId) async {

    var post = await getPost(postId);
    _titleTextController.text = post[0]['title'];
    _contentTextController.text = post[0]['content'];

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: const Text('Edit Post'),
          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
                controller: _titleTextController,
              ),

              const SizedBox(height: 20),

              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Content',
                ),
                controller: _contentTextController,
              ),
            ],
          ),

          actions: <Widget>[
            TextButton(

              onPressed: () {
                _clearTextControllers();
                Navigator.of(context).pop();
              },

              child: const Text('Cancel'),
            ),

            TextButton(

              onPressed: () {
                _editPost(postId);
                Navigator.of(context).pop();
              },

              child: const Text('Edit'),
            ),
          ],
        );
      },
    );
  }

  void _deletePost(int postId) async {

    await deletePost(postId);
  }

  void _addComment(int postId) async {

    var content = _contentTextController.text;

    await addComment(_memberId, postId, content);

    _clearTextControllers();
  }

  void _addCommentDialog(postId) async {

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: const Text('New Comment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Comment',
                ),
                controller: _contentTextController,
              ),
            ],
          ),

          actions: <Widget>[
            TextButton(

              onPressed: () {
                _clearTextControllers();
                Navigator.of(context).pop();
              },

              child: const Text('Cancel'),
            ),

            TextButton(

              onPressed: () {
                _addComment(postId);
                Navigator.of(context).pop();
              },

              child: const Text('Post'),
            ),
          ],
        );
      },
    );
  }

  void _editComment(int commentId) async {

    var content = _contentTextController.text;

    await updateComment(content, commentId);

    _clearTextControllers();
  }

  void _editCommentDialog(int commentId) async {

    var comment = await getComment(commentId);
    _contentTextController.text = comment[0]['content'];

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          title: const Text('Edit Comment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Comment',
                ),
                controller: _contentTextController,
              ),
            ],
          ),

          actions: <Widget>[
            TextButton(

              onPressed: () {
                _clearTextControllers();
                Navigator.of(context).pop();
              },

              child: const Text('Cancel'),
            ),

            TextButton(

              onPressed: () {
                _editComment(commentId);
                Navigator.of(context).pop();
              },

              child: const Text('Edit'),
            ),
          ],
        );
      },
    );
  }

  void _deleteComment(int commentId) async {

    await deleteComment(commentId);
  }

  @override
  Widget build(BuildContext context) {

    _getContent();

    if (_loginState == 0) {
      return Center(

        child: Container(
          margin: const EdgeInsets.all(40),

          child: SingleChildScrollView(

            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text('Login'),
                  const SizedBox(height: 20),

                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'name',
                    ),
                    controller: _nameTextController,
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    controller: _passwordTextController,
                  ),

                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _onLogin();
                        },

                        child: const Text('Login'),
                      ),

                      const SizedBox(width: 20),

                      const Text('or'),

                      const SizedBox(width: 20),

                      ElevatedButton(
                        onPressed: () {
                          _onRegister();
                        },

                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else if (_loginState == 1) {
      return Center(

        child: Container(
          margin: const EdgeInsets.all(40),

          child: SingleChildScrollView(

            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1250),

              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      _addPostDialog();
                    } ,
                    child: const Text('New Post'),
                  ),

                  const SizedBox(height: 20),

                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {

                      var postId = _posts[index]['id'];
                      var postTitle = _posts[index]['title'];
                      var postContent = _posts[index]['content'];
                      var postMemberId = _posts[index]['member_id'];
                      var postMember = _posts[index]['name'];
                      var postCreated = DateFormat('yyyy-MM-dd – kk:mm').format(_posts[index]['created_at']);
                      var postIsEdited = _posts[index]['is_edited'];

                      return Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(bottom: 20),

                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                postTitle,
                                style: const TextStyle(
                                  fontSize: 30, // Set your desired font size here
                                ),
                              ),
                              const Divider(),
                              Text(postContent),
                              const Divider(),
                              Text('by $postMember'),
                              Text(
                                'at $postCreated $postIsEdited',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              if (postMemberId == _memberId) ...[
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        _editPostDialog(postId);
                                      } ,
                                      child: const Text('Edit'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _deletePost(postId);
                                      },
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              ],
                              const Divider(
                                color: Colors.white,
                              ),
                              const Text('Comments:'),
                              ConstrainedBox(

                                constraints: const BoxConstraints(maxWidth: 1250),

                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: _comments.length,
                                  itemBuilder: (context, index) {

                                    var commentId = _comments[index]['id'];
                                    var commentContent = _comments[index]['content'];
                                    var commentMemberId = _comments[index]['member_id'];
                                    var commentMember = _comments[index]['name'];
                                    var commentPostId = _comments[index]['post_id'];
                                    var commentCreated = DateFormat('yyyy-MM-dd – kk:mm').format(_comments[index]['created_at']);
                                    var commentIsEdited = _comments[index]['is_edited'];

                                    if (commentPostId == postId) {
                                      return Container(
                                        padding: const EdgeInsets.only(left: 20),

                                        child: ListTile(
                                          title: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: [
                                              const Divider(
                                                color: Colors.white,
                                              ),
                                              Text(commentContent),
                                              const Divider(),
                                              Text('by $commentMember'),
                                              Text(
                                                'at $commentCreated $commentIsEdited',
                                                style: TextStyle(
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              if (commentMemberId == _memberId) ...[
                                                Row(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        _editCommentDialog(commentId);
                                                      } ,
                                                      child: const Text('Edit'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        _deleteComment(commentId);
                                                      },
                                                      child: const Text('Delete'),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                    else {
                                      return const SizedBox();
                                    }
                                  },
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    _addCommentDialog(postId);
                                  } ,
                                  child: const Text('Add comment'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return const CircularProgressIndicator();
    }
  }

  @override
  void dispose() {

    _nameTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }
}

