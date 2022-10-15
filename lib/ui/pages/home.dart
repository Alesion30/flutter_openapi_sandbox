import 'package:flutter/material.dart';
import 'package:flutter_openapi_sandbox/providers/user_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(fetchUsersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter openapi sandbox'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(fetchUsersProvider.future),
        child: Builder(
          builder: (context) {
            return users.when(
              data: (users) => ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: user.gender == UserGenderEnum.man
                        ? const Icon(Icons.man)
                        : const Icon(Icons.woman),
                    title: Text(user.name),
                    subtitle: Text(user.email),
                  );
                },
              ),
              error: (_, __) => const Text('Error'),
              loading: () => const Text('Loading...'),
            );
          },
        ),
      ),
    );
  }
}
