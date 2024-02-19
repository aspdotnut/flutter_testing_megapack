import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'orb/orb_bloc.dart';

import 'theme.dart';

import 'phone_slider.dart';
import 'random_email.dart';
import 'password_kitchen.dart';
import 'confused_buttons.dart';
import 'orb_party.dart';
import 'todo_list.dart';
import 'forum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const MaterialTheme materialTheme = MaterialTheme(TextTheme());

    return MaterialApp(
      title: 'Wonky stuff',
      theme: materialTheme.dark(),
      home: const MyHomePage(title: 'Wonky stuff'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 7,

      child: Scaffold(

        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),

          bottom: const TabBar(

            tabs: [
              Tab(icon: Icon(Icons.phone), text: 'Phone Slider'),

              Tab(icon: Icon(Icons.mail), text: 'Random Email'),

              Tab(icon: Icon(Icons.lock), text: 'Password Kitchen'),

              Tab(icon: Icon(Icons.radio_button_on), text: 'Confused Buttons'),

              Tab(icon: Icon(Icons.circle), text: 'Orb Party'),

              Tab(icon: Icon(Icons.check), text: 'Todo List'),

              Tab(icon: Icon(Icons.supervised_user_circle), text: 'Forum'),
            ],
          ),
        ),

        body: TabBarView(

          children: [
            const PhoneSlider(),

            const RandomEmail(),

            const PasswordKitchen(),

            const ConfusedButtons(),

            BlocProvider<OrbBloc>(
              create: (context) => OrbBloc()..add(LoadOrbCounter()), // Adjust according to your OrbBloc initialization
              child: const OrbParty(),
            ),

            const TodoList(),

            const Forum(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {

    super.dispose();
  }
}
