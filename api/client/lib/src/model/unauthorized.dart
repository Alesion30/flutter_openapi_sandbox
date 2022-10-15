//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unauthorized.g.dart';

/// Unauthorized
///
/// Properties:
/// * [error] 
@BuiltValue()
abstract class Unauthorized implements Built<Unauthorized, UnauthorizedBuilder> {
  @BuiltValueField(wireName: r'error')
  String get error;

  Unauthorized._();

  factory Unauthorized([void updates(UnauthorizedBuilder b)]) = _$Unauthorized;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnauthorizedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Unauthorized> get serializer => _$UnauthorizedSerializer();
}

class _$UnauthorizedSerializer implements PrimitiveSerializer<Unauthorized> {
  @override
  final Iterable<Type> types = const [Unauthorized, _$Unauthorized];

  @override
  final String wireName = r'Unauthorized';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Unauthorized object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Unauthorized object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnauthorizedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Unauthorized deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnauthorizedBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

