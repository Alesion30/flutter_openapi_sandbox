// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserGenderEnum _$userGenderEnum_man = const UserGenderEnum._('man');
const UserGenderEnum _$userGenderEnum_woman = const UserGenderEnum._('woman');

UserGenderEnum _$userGenderEnumValueOf(String name) {
  switch (name) {
    case 'man':
      return _$userGenderEnum_man;
    case 'woman':
      return _$userGenderEnum_woman;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UserGenderEnum> _$userGenderEnumValues =
    new BuiltSet<UserGenderEnum>(const <UserGenderEnum>[
  _$userGenderEnum_man,
  _$userGenderEnum_woman,
]);

Serializer<UserGenderEnum> _$userGenderEnumSerializer =
    new _$UserGenderEnumSerializer();

class _$UserGenderEnumSerializer
    implements PrimitiveSerializer<UserGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'man': 'man',
    'woman': 'woman',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'man': 'man',
    'woman': 'woman',
  };

  @override
  final Iterable<Type> types = const <Type>[UserGenderEnum];
  @override
  final String wireName = 'UserGenderEnum';

  @override
  Object serialize(Serializers serializers, UserGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$User extends User {
  @override
  final String name;
  @override
  final String email;
  @override
  final UserGenderEnum gender;
  @override
  final String? address;
  @override
  final int familyCount;
  @override
  final DateTime createdAt;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {required this.name,
      required this.email,
      required this.gender,
      this.address,
      required this.familyCount,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'User', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'User', 'email');
    BuiltValueNullFieldError.checkNotNull(gender, r'User', 'gender');
    BuiltValueNullFieldError.checkNotNull(familyCount, r'User', 'familyCount');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'User', 'createdAt');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        name == other.name &&
        email == other.email &&
        gender == other.gender &&
        address == other.address &&
        familyCount == other.familyCount &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), email.hashCode),
                    gender.hashCode),
                address.hashCode),
            familyCount.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('name', name)
          ..add('email', email)
          ..add('gender', gender)
          ..add('address', address)
          ..add('familyCount', familyCount)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  UserGenderEnum? _gender;
  UserGenderEnum? get gender => _$this._gender;
  set gender(UserGenderEnum? gender) => _$this._gender = gender;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  int? _familyCount;
  int? get familyCount => _$this._familyCount;
  set familyCount(int? familyCount) => _$this._familyCount = familyCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _gender = $v.gender;
      _address = $v.address;
      _familyCount = $v.familyCount;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        new _$User._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'User', 'name'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, r'User', 'email'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'User', 'gender'),
            address: address,
            familyCount: BuiltValueNullFieldError.checkNotNull(
                familyCount, r'User', 'familyCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'User', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
