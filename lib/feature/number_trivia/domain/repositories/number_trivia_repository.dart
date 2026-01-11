import 'package:clean_archi_todo/core/error/failures.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';


// A Contract (interface - used as abstract in dart) Defines what the app can do
// Separated from how it is done

// A repository contract that represents an abstraction between the domain
// and data layers, defining required operations while hiding implementation
// details such as APIs, databases, or caching mechanisms.
// Return Future of Either (dartz) - Left or Right(Failure or Entity model)


abstract class NumberTriviaRepository{
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
  
}
