import 'package:clean_archi_todo/core/error/failures.dart';
import 'package:clean_archi_todo/core/usecases/usecase.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

// use case rep one specific business action defined already in the repositories

// Use Cases are where the business logic get executed
// Getting Data from Repositories
// which are GetConcreteNumberTrivia  and GetRandomNumberTrivia


class GetRandomNumbertrivia implements UseCaseWithoutParams{
  GetRandomNumbertrivia({required this.repository});

  NumberTriviaRepository repository;

  @override
  Future<Either<Failure, NumberTrivia>> call() async {
    return await repository.getRandomNumberTrivia();
  }
}
