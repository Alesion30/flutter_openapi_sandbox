import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void fetchUsers() async {
      final api = Openapi(
        basePathOverride: 'http://localhost:8082',
      );
      final repository = api.getUsersApi();
      final response = await repository.getUsers();
      print(response.data);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter openapi sandbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: fetchUsers,
              child: const Text('fetch users'),
            )
          ],
        ),
      ),
    );
  }
}
