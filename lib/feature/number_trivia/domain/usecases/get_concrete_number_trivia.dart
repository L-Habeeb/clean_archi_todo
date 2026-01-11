import 'package:clean_archi_todo/core/error/failures.dart';
import 'package:clean_archi_todo/core/usecases/usecase.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


// use case rep one specific business action defined already in the repositories

// Use Cases are where the business logic get executed
// Getting Data from Repositories
// which are GetConcreteNumberTrivia  and GetRandomNumberTrivia
// Return Future of Either (dartz) - Left or Right(Failure or Entity model)


class GetConcreteNumberTrivia implements UseCaseWithParams<NumberTrivia, Params> {
  const GetConcreteNumberTrivia({required this.repository});

  final NumberTriviaRepository repository;
  
  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}


class Params extends Equatable {
  final int number;
  const Params(this.number);

  @override
  List<Object?> get props => [number];
}
