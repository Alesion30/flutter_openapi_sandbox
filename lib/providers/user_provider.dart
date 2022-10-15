import 'package:flutter_openapi_sandbox/api/openapi.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final fetchUsersProvider = FutureProvider<List<User>>((ref) async {
  final openapi = ref.read(openapiProvider);
  final repository = openapi.getUsersApi();
  final response = await repository.getUsers();
  return response.data?.toList() ?? [];
});
