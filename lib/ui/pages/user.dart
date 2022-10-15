import 'package:flutter/material.dart';
import 'package:flutter_openapi_sandbox/extensions/text_style.dart';
import 'package:flutter_openapi_sandbox/providers/user_provider.dart';
import 'package:flutter_openapi_sandbox/ui/theme/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserPage extends HookConsumerWidget {
  const UserPage(this.id, {super.key});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(fetchUserProvider(id));
    final theme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Builder(
        builder: (context) {
          return user.when(
            data: (user) => Center(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Text(
                      'User Name',
                      style: theme.textTheme.h40,
                    ),
                    Text(
                      user.name,
                      style: theme.textTheme.h60.bold(),
                    ),
                  ],
                ),
              ),
            ),
            error: (_, __) => const Text('Error'),
            loading: () => const Text('Loading...'),
          );
        },
      ),
    );
  }
}
