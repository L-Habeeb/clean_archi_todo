import 'package:clean_archi_todo/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_archi_todo/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetConcreteNumberRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockGetConcreteNumberRepository mockGetConcreteNumberRepository;

  setUp(() {
    mockGetConcreteNumberRepository = MockGetConcreteNumberRepository();
    usecase = GetConcreteNumberTrivia(repository: mockGetConcreteNumberRepository);
  });

  test(
    'should get number for the Trivia from the repository',
    () async {
      // Arrange

      // Act

      // Assert

    },
  );
}

