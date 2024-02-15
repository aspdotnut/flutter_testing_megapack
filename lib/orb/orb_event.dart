part of 'orb_bloc.dart';

abstract class OrbEvent extends Equatable {

  const OrbEvent();

  @override
  List<Object> get props => [];
}

class LoadOrbCounter extends OrbEvent {}

class AddOrb extends OrbEvent {

  final Orb orb;

  const AddOrb(this.orb);

  @override
  List<Object> get props => [orb];
}

class RemoveOrb extends OrbEvent {

  final Orb orb;

  const RemoveOrb(this.orb);

  @override
  List<Object> get props => [orb];
}