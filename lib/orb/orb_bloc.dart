import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/orb_model.dart';
import 'package:equatable/equatable.dart';


part 'orb_event.dart';
part 'orb_state.dart';

class OrbBloc extends Bloc<OrbEvent, OrbState> {

  OrbBloc() : super(OrbInitial()) {

    on<LoadOrbCounter>((event, emit) async {

      await Future<void>.delayed(const Duration(seconds: 1));

      emit(const OrbLoaded(orbs: <Orb>[]));
    });

    on<AddOrb>((event, emit) {

      if (state is OrbLoaded) {

        final List<Orb> updatedOrbs = List.from((state as OrbLoaded).orbs)
          ..add(event.orb);

        emit(OrbLoaded(orbs: updatedOrbs));
      }
    });

    on<RemoveOrb>((event, emit) {

      if (state is OrbLoaded) {

        final currentState = state as OrbLoaded;

        final orbToRemoveIndex = currentState.orbs.indexWhere((orb) => orb.id == event.orb.id);

        if (orbToRemoveIndex != -1) {

          final List<Orb> updatedOrbs = List.from(currentState.orbs)..removeAt(orbToRemoveIndex);
          emit(OrbLoaded(orbs: updatedOrbs));

        }
      }
    });
  }
}
