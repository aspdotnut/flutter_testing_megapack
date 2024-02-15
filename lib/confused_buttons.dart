import 'package:flutter/material.dart';

import 'dart:math';

class ConfusedButtons extends StatefulWidget {

  const ConfusedButtons({super.key});

  @override
  State<ConfusedButtons> createState() => _ConfusedButtonsState();
}

class _ConfusedButtonsState extends State<ConfusedButtons> {

  var inactiveState = "I'm an inactive button";
  var activeState = "I'm an active button";

  var button1Active = false;
  var button2Active = false;
  var button3Active = false;
  var button4Active = false;

  void _onButtonPressed() {

    int random(int min, int max) {

      return min + Random().nextInt(max - min);
    }

    switch (random(1, 7)) {
      case 1:
      case 2:
        _button1StateChange();
        break;
      case 3:
        _button2StateChange();
        break;
      case 4:
      case 5:
        _button3StateChange();
        break;
      case 6:
        _button4StateChange();
        break;
    }
  }

  void _button1StateChange() {

    setState(() {
      button1Active = !button1Active;
    });
  }

  void _button2StateChange() {

    setState(() {
      button2Active = !button2Active;
    });
  }

  void _button3StateChange() {

    setState(() {
      button3Active = !button3Active;
    });
  }

  void _button4StateChange() {

    setState(() {
      button4Active = !button4Active;
    });
  }

  @override
  Widget build(BuildContext context) {

    String button1Text = button1Active ? activeState : inactiveState;
    String button2Text = button2Active ? activeState : inactiveState;
    String button3Text = button3Active ? activeState : inactiveState;
    String button4Text = button4Active ? activeState : inactiveState;

    return Center(

      child: Container(
        margin: const EdgeInsets.all(40),

        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 800) {

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const Text("Make all four buttons active to prove you're not a robot."),

                  const SizedBox(height: 20),

                  FilledButton(

                    onPressed: _onButtonPressed,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                    ),

                    child: Text(button1Text),
                  ),

                  const SizedBox(height: 20),

                  FilledButton(

                    onPressed: _onButtonPressed,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                    ),

                    child: Text(button2Text),
                  ),

                  const SizedBox(height: 20),

                  FilledButton(

                    onPressed: _onButtonPressed,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                    ),

                    child: Text(button3Text),
                  ),

                  const SizedBox(height: 20),

                  FilledButton(

                    onPressed: _onButtonPressed,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                    ),

                    child: Text(button4Text),
                  ),
                ],
              );
            }
            else {

              return Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text("Make all four buttons active to prove you're not a robot."),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(

                          onPressed: _onButtonPressed,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                          ),

                          child: Text(button1Text),
                        ),

                        const SizedBox(width: 20),

                        FilledButton(

                          onPressed: _onButtonPressed,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                          ),

                          child: Text(button2Text),
                        ),

                        const SizedBox(width: 20),

                        FilledButton(

                          onPressed: _onButtonPressed,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                          ),

                          child: Text(button3Text),
                        ),

                        const SizedBox(width: 20),

                        FilledButton(

                          onPressed: _onButtonPressed,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                          ),

                          child: Text(button4Text),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {

    super.dispose();
  }
}