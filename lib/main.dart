import 'package:flutter/material.dart';
import 'package:flutter_openapi_sandbox/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
