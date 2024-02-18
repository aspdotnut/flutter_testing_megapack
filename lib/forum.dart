
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

  void _getComments() async {

    var comments = await getComments();

    setState(() {
      _comments.clear();
      _comments.addAll(comments);
    });
  }

  @override
  Widget build(BuildContext context) {

    _getPosts();
    _getComments();

    return Center(

      child: Container(
        margin: const EdgeInsets.all(40),

        child: SingleChildScrollView(

          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1250),

            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _posts.length,
              itemBuilder: (context, index) {

                var postId = _posts[index]['id'];
                var postTitle = _posts[index]['title'];
                var postContent = _posts[index]['content'];
                var postMemberId = _posts[index]['member_id'];
                var postEmail = _posts[index]['email'];
                var postCreated = _posts[index]['created_at'];
                var postIsEdited = _posts[index]['is_edited'];

                return ListTile(
                  title: Column(
                    children: [
                      Text(postTitle),
                      Text('by $postEmail'),
                      Text(postContent),
                      Text('$postCreated $postIsEdited'),
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
                            var commentEmail = _comments[index]['email'];
                            var commentPostId = _comments[index]['post_id'];
                            var commentCreated = _comments[index]['created_at'];
                            var commentIsEdited = _comments[index]['is_edited'];

                            print(_comments);

                            if (commentPostId == postId) {
                              return ListTile(
                                title:
                                Column(

                                  children: [
                                    Text(commentContent),
                                    Text('by $commentEmail'),
                                    Text('$commentCreated $commentIsEdited'),
                                  ],
                                ),
                              );
                            }
                            else {
                              return const SizedBox();
                            }
                          },
                        ),
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