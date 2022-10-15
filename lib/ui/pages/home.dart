import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    void getUsers() async {
      final api = Openapi(
        basePathOverride: 'http://localhost:8082',
      );
      final repository = api.getUsersApi();
      final response = await repository.getUsers();
      print(response.data);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: getUsers,
              child: const Text('fetch users'),
            )
          ],
        ),
      ),
    );
  }
}
