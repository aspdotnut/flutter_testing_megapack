import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:math';

import 'models/orb_model.dart';
import 'orb/orb_bloc.dart';

class OrbParty extends StatefulWidget {

  const OrbParty({super.key});

  @override
  State<OrbParty> createState() => _OrbPartyState();
}

class _OrbPartyState extends State<OrbParty> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Container(
          margin: const EdgeInsets.all(40),

          child: BlocBuilder<OrbBloc, OrbState>(
            builder: (context, state) {
              if (state is OrbLoaded) {

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("${state.orbs.length} orbs"),

                    const SizedBox(height: 20),

                    Expanded(

                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,

                        children: [
                          for (int i = 0; i < state.orbs.length; i++)

                            Positioned(
                              top: max(0, Random().nextDouble() * MediaQuery.of(context).size.height / 1.6 - 100),
                              left: max(0, Random().nextDouble() * MediaQuery.of(context).size.width - 100),

                              child: SizedBox(
                                height: 50,
                                width: 50,

                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Color(int.parse(state.orbs[i].color.substring(1, 7), radix: 16) + 0xFF000000),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          FloatingActionButton(

            onPressed: () {
              if (Orb.orbs.isNotEmpty) {
                int index = Random().nextInt(Orb.orbs.length);
                context.read<OrbBloc>().add(AddOrb(Orb.orbs[index]));
              }
            },

            child: const Icon(Icons.add),
          ),

          const SizedBox(height: 20),

          FloatingActionButton(

            onPressed: () {
              final currentState = context.read<OrbBloc>().state;
              if (currentState is OrbLoaded && currentState.orbs.isNotEmpty) {
                int index = Random().nextInt(currentState.orbs.length);
                context.read<OrbBloc>().add(RemoveOrb(currentState.orbs[index]));
              }
            },

            child: const Icon(Icons.remove),
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