import 'package:flutter/material.dart';

import 'dio/password_dio.dart';
import 'hash.dart';

class PasswordKitchen extends StatefulWidget {

  const PasswordKitchen({super.key});

  @override
  State<PasswordKitchen> createState() => _PasswordKitchenState();
}

class _PasswordKitchenState extends State<PasswordKitchen> {

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

  final TextEditingController _registerController = TextEditingController();
  final TextEditingController _loginController = TextEditingController();

  Future<void> _onRegisterSubmitted() async {

    String ingredientPassword = _passwordToIngredients(_registerController.text);

    _updateRegisterStatus(ingredientPassword, await _savePassword(ingredientPassword));
  }

  Future<bool> _savePassword(String ingredientPassword) async {

    String encryptedPassword = hashPassword(ingredientPassword);

    return await addPassword(encryptedPassword);
  }


  Future<void> _onLoginSubmitted() async {

    _updateLoginStatus(await _getPassword(_loginController.text));
  }

  Future<bool> _getPassword(String password) async {

    String encryptedPassword = hashPassword(password);

    return await getPassword(encryptedPassword);
  }


  void _updateRegisterStatus(String ingredientPassword, bool onSuccess){

    setState(() {
      onSuccess ? _showDialog("Password generated", "Please log in with \"$ingredientPassword\"")
          : _showDialog("Something went wrong", "Please try again");

      _registerController.clear();
    });
  }

  void _updateLoginStatus(bool onSuccess){

    setState(() {
      onSuccess ? _showDialog("Password correct", "\"${_loginController.text}\" is a valid password.")
          : _showDialog("Password incorrect", "\"${_loginController.text}\" is not a valid password.");

      _loginController.clear();
    });
  }

  void _showDialog(String title, String content) {

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Container(
          margin: const EdgeInsets.all(40),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              const Text('Enter your password:'),

              const SizedBox(height: 20),

              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),

                child: TextField(
                  controller: _registerController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Register password',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              FilledButton(

                onPressed: _onRegisterSubmitted,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                ),

                child: const Text('Register'),
              ),

              const SizedBox(height: 50),

              ConstrainedBox(

                constraints: const BoxConstraints(maxWidth: 600),

                child: TextField(
                  controller: _loginController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Login with password',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              FilledButton(

                onPressed: _onLoginSubmitted,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                ),

                child: const Text('Login'),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {

    _registerController.dispose();
    _loginController.dispose();
    super.dispose();
  }
}