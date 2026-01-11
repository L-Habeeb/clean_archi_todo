import 'package:clean_archi_todo/feature/number_trivia/domain/entities/number_trivia.dart';


// A model is a data-layer representation, It extends or maps to an entity
// It adds serialization logic (JSON ↔ object), It must not add business logic

class NumberTriviaModel extends NumberTrivia {
  
  const NumberTriviaModel({
    required super.text,
    required super.number,
  });

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'],
      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
    };
  }

}