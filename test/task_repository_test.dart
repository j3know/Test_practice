import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/task_repository.dart";
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements Client {}

void main() {
  late MockHttpClient mockClinet;
  late TaskRespository taskRespository;

  setUp(() {
    mockClinet = MockHttpClient();
    taskRespository = TaskRespository(mockClinet);
  });

  test(
      'Given Task Repository is instantiate, When fetchTask is called and return is 200, then a Task object shount be returned,',
      () async {
    String uri = 'https://jsonplaceholder.typicode.com/todos';

    when(() => mockClinet.get(Uri.parse(uri)))
        .thenAnswer((_) => Future.delayed(Duration.zero, () => Response('''

[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  }
]

''', 200)));

// TaskRespository taskRespository = TaskRespository();

    Tasks tasks = await taskRespository.fetchTask();

    expect(tasks, isA<Tasks>());

    verify(
      () => mockClinet.get(
        Uri.parse(uri),
      ),
    ).called(1);
  });

  test(
      'Given Task Repository is instantiate, When fetchTask is called and return is 404, then a Task object shount be thrown',
      () 
        async {
    String uri = 'https://jsonplaceholder.typicode.com/todos';

    when(() => mockClinet.get(Uri.parse(uri)))
        .thenAnswer((_) => Future.delayed(Duration.zero, () => Response('', 404)));

// TaskRespository taskRespository = TaskRespository();

    expect(taskRespository.fetchTask(), throwsException);

      });
}
