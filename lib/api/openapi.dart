import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

final openapiProvider = Provider((ref) {
  return Openapi(
    basePathOverride: 'http://localhost:8082',
  );
});
