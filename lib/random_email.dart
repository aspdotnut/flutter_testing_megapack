import 'package:flutter/material.dart';

import 'dart:math';

class RandomEmail extends StatefulWidget {

  const RandomEmail({super.key});

  @override
  State<RandomEmail> createState() => _RandomEmailState();
}

class _RandomEmailState extends State<RandomEmail> {

  final TextEditingController _textController = TextEditingController();
  int _previousTextLength = 0;

  @override
  void initState() {

    super.initState();

    _textController.addListener(() {
      _shuffleText();
      _caretPlacement();
    });
  }

  void _caretPlacement() {

    final text = _textController.text;

    _textController.value = _textController.value.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
      composing: TextRange.empty,
    );
  }

  void _shuffleText() {

    String text = _textController.text;

    if (text.isNotEmpty && text.length > _previousTextLength) {

      String lastChar = text[text.length - 1];
      String shuffledChar = _shuffle(lastChar);

      _textController.removeListener(_shuffleText);

      _textController.text = text.substring(0, text.length - 1) + shuffledChar;

      _textController.removeListener(_shuffleText);
    }
    _previousTextLength = text.length;
  }

  String _shuffle(String char) {

    String shuffledChar;

    var rng = Random();
    int ascii = char.codeUnitAt(0);
    int newAscii = ascii + rng.nextInt(10) - 5;
    shuffledChar = String.fromCharCode(newAscii);

    if (!RegExp(r'^[a-zA-Z0-9.@]$').hasMatch(shuffledChar)) {
      return _shuffle(char);
    }

    return shuffledChar;
  }

  @override
  Widget build(BuildContext context) {

    return Center(

        child: Container(
          margin: const EdgeInsets.all(40),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              const Text(
                'Enter your email address:',
              ),

              const SizedBox(height: 20),

              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600,),

                child: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  @override
  void dispose() {

    _textController.dispose();
    super.dispose();
  }
}