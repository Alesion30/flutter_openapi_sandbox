//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [id] - ユーザーのID
/// * [name] - ユーザーのフルネーム
/// * [email] - ユーザーのメールアドレス
/// * [gender] - 性別
/// * [address] - 住所
/// * [familyCount] - 自分を含む家族の人数
/// * [createdAt] - 作成日
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  /// ユーザーのID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ユーザーのフルネーム
  @BuiltValueField(wireName: r'name')
  String get name;

  /// ユーザーのメールアドレス
  @BuiltValueField(wireName: r'email')
  String get email;

  /// 性別
  @BuiltValueField(wireName: r'gender')
  UserGenderEnum get gender;
  // enum genderEnum {  man,  woman,  };

  /// 住所
  @BuiltValueField(wireName: r'address')
  String? get address;

  /// 自分を含む家族の人数
  @BuiltValueField(wireName: r'familyCount')
  int get familyCount;

  /// 作成日
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(UserGenderEnum),
    );
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    yield r'familyCount';
    yield serializers.serialize(
      object.familyCount,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserGenderEnum),
          ) as UserGenderEnum;
          result.gender = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'familyCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.familyCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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

class UserGenderEnum extends EnumClass {

  /// 性別
  @BuiltValueEnumConst(wireName: r'man')
  static const UserGenderEnum man = _$userGenderEnum_man;
  /// 性別
  @BuiltValueEnumConst(wireName: r'woman')
  static const UserGenderEnum woman = _$userGenderEnum_woman;

  static Serializer<UserGenderEnum> get serializer => _$userGenderEnumSerializer;

  const UserGenderEnum._(String name): super(name);

  static BuiltSet<UserGenderEnum> get values => _$userGenderEnumValues;
  static UserGenderEnum valueOf(String name) => _$userGenderEnumValueOf(name);
}

