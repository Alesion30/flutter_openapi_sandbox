import 'package:flutter/material.dart';
import 'package:flutter_openapi_sandbox/router.dart';
import 'package:flutter_openapi_sandbox/ui/theme/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      theme: AppTheme.light().data,
      routerConfig: router,
    );
  }
}
