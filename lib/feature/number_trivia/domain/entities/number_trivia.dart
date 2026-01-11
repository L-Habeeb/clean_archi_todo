import 'package:equatable/equatable.dart';

//  Entities - All Data that will be used in the NumberTrivia App

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({
    required this.text,
    required this.number,
  });
  
  @override
  List<Object?> get props => [text, number];
}
