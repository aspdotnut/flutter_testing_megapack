part of 'orb_bloc.dart';

abstract class OrbState extends Equatable {

  const OrbState();

  @override
  List<Object> get props => [];
}

class OrbInitial extends OrbState {}

class OrbLoaded extends OrbState {

  final List<Orb> orbs;

  const OrbLoaded({required this.orbs});

  @override
  List<Object> get props => [orbs];
}
