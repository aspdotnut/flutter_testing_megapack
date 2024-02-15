import 'package:flutter/material.dart';

class PhoneSlider extends StatefulWidget {

  const PhoneSlider({super.key});

  @override
  State<PhoneSlider> createState() => _PhoneSliderState();
}

class _PhoneSliderState extends State<PhoneSlider> {

  var _counter = 0;
  var _altCounter = "0";

  var _slider1 = 0;
  var _slider2 = 0;
  var _slider3 = 0;
  var _slider4 = 0;
  var _slider5 = 0;
  var _slider6 = 0;
  var _slider7 = 0;
  var _slider8 = 0;
  var _slider9 = 0;
  var _slider10 = 0;

  void _updateAltCounter() {

    setState(() {
      _altCounter = _slider10.toString().substring(0, 1) +
          _slider9.toString().substring(0, 1) +
          _slider8.toString().substring(0, 1) +
          _slider7.toString().substring(0, 1) +
          _slider6.toString().substring(0, 1) +
          _slider5.toString().substring(0, 1) +
          _slider4.toString().substring(0, 1) +
          _slider3.toString().substring(0, 1) +
          _slider2.toString().substring(0, 1) +
          _slider1.toString().substring(0, 1);
    });
  }

  void _resetCounters() {

    setState(() {
      _counter = 0;
      _altCounter = "0";
      _slider1 = 0;
      _slider2 = 0;
      _slider3 = 0;
      _slider4 = 0;
      _slider5 = 0;
      _slider6 = 0;
      _slider7 = 0;
      _slider8 = 0;
      _slider9 = 0;
      _slider10 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text(
            'Enter your phone number:',
          ),

          Text(
            '${_altCounter.padLeft(10, '0')} - ${_counter.toString().padLeft(10, '0')}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const Text(
            'Easy mode   -   Hard mode',
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Column(

                children: [
                  Column(

                    children: [
                      const Text('1 - 9'),

                      Slider(
                        value: _counter.toDouble(),
                        min: 0,
                        max: _counter.toDouble() > 9 ? _counter.toDouble() : 9,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider1 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('10 - 99'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 10 ? _counter.toDouble() : 10,
                        max: _counter.toDouble() > 99 ? _counter.toDouble() : 99,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider2 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('100 - 999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 100 ? _counter.toDouble() : 100,
                        max: _counter.toDouble() > 999 ? _counter.toDouble() : 999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider3 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('1000 - 9999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 1000 ? _counter.toDouble() : 1000,
                        max: _counter.toDouble() > 9999 ? _counter.toDouble() : 9999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider4 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('10000 - 99999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 10000 ? _counter.toDouble() : 10000,
                        max: _counter.toDouble() > 99999 ? _counter.toDouble() : 99999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider5 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              Column(

                children: [
                  Column(

                    children: [
                      const Text('100000 - 999999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 100000 ? _counter.toDouble() : 100000,
                        max: _counter.toDouble() > 999999 ? _counter.toDouble() : 999999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider6 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('1000000 - 9999999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 1000000 ? _counter.toDouble() : 1000000,
                        max: _counter.toDouble() > 9999999 ? _counter.toDouble() : 9999999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider7 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('10000000 - 99999999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 10000000 ? _counter.toDouble() : 10000000,
                        max: _counter.toDouble() > 99999999 ? _counter.toDouble() : 99999999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider8 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('100000000 - 999999999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 100000000 ? _counter.toDouble() : 100000000,
                        max: _counter.toDouble() > 999999999 ? _counter.toDouble() : 999999999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider9 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),

                  Column(

                    children: [
                      const Text('1000000000 - 9999999999'),

                      Slider(
                        value: _counter.toDouble(),
                        min: _counter.toDouble() < 1000000000 ? _counter.toDouble() : 1000000000,
                        max: _counter.toDouble() > 9999999999 ? _counter.toDouble() : 9999999999,
                        activeColor: Theme.of(context).colorScheme.secondary,

                        onChanged: (value) {
                          setState(() {
                            _counter = value.toInt();
                            _slider10 = value.toInt();
                            _updateAltCounter();
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          FilledButton(

            onPressed: _resetCounters,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
            ),

            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {

    super.dispose();
  }
}