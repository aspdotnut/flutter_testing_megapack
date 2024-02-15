
///////////////////////////////////////  GAME  PLAN  ///////////////////////////////////////
//                                                                                        //
// - Interact with database to store and retrieve posts and comments                      //
// - Create a way to view all posts and comments                                          //
// - Use bloc to manage user state                                                        //
// - Implement random email and password kitchen to use as actual login/register system   //
// - Create post button to add new post or comment (Inline?)                              //
// - Delete button on own content                                                         //
// - Edit button on own content                                                           //
// - Show created date (suffix with "(edited)" when isEdited is true)                     //
//                                                                                        //
///////////////////////////////////////  GAME  PLAN  ///////////////////////////////////////

//// Files that contain the necessary code:
// todo_list.dart
// random_email.dart
// password_kitchen.dart
////

import 'package:flutter/material.dart';

import 'dart:math';

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

  void _getPosts() async {

    var posts = await getPosts();

    setState(() {
      _posts.clear();
      _posts.addAll(posts);
    });
  }

  @override
  Widget build(BuildContext context) {

    _getPosts();

    return Center(

      child: Container(
        margin: const EdgeInsets.all(40),

        child: SingleChildScrollView(

          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),

            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _posts.length,
              itemBuilder: (context, index) {

                var id = _posts[index]['id'];
                var title = _posts[index]['title'];
                var content = _posts[index]['content'];
                var memberId = _posts[index]['member_id'];
                var email = _posts[index]['email'];

                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(

                        children: [
                          Text(title),
                          Text('by $email'),
                          Text(content)
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}