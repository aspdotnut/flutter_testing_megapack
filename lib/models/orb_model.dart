import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Orb extends Equatable {

  final String id;
  final String name;
  final String color;

  const Orb({

    required this.id,
    required this.name,
    required this.color,
  });

  @override
  List<Object> get props => [id, name, color];

  static List<Orb> orbs = [

    Orb(
        id: const Uuid().v4(),
        name: 'Red Orb',
        color: '#FF0000'),

    Orb(
        id: const Uuid().v4(),
        name: 'Blue Orb',
        color: '#0000FF'),
  ];
}