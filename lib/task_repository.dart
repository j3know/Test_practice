import 'package:http/http.dart' as http;

class TaskRespository {
  final http.Client client;
  TaskRespository(this.client);

  Future<Tasks> fetchTask() async {
    final response = await client.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );

    if (response.statusCode == 200) {
      return Tasks();
    } else {
      throw Exception();
    }
  }
}

class Tasks {}
