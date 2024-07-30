// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sessions _$SessionsFromJson(Map<String, dynamic> json) {
  return _Sessions.fromJson(json);
}

/// @nodoc
mixin _$Sessions {
  Iterable<Session> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionsCopyWith<Sessions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsCopyWith<$Res> {
  factory $SessionsCopyWith(Sessions value, $Res Function(Sessions) then) =
      _$SessionsCopyWithImpl<$Res, Sessions>;
  @useResult
  $Res call({Iterable<Session> sessions});
}

/// @nodoc
class _$SessionsCopyWithImpl<$Res, $Val extends Sessions>
    implements $SessionsCopyWith<$Res> {
  _$SessionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Iterable<Session>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsImplCopyWith<$Res>
    implements $SessionsCopyWith<$Res> {
  factory _$$SessionsImplCopyWith(
          _$SessionsImpl value, $Res Function(_$SessionsImpl) then) =
      __$$SessionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<Session> sessions});
}

/// @nodoc
class __$$SessionsImplCopyWithImpl<$Res>
    extends _$SessionsCopyWithImpl<$Res, _$SessionsImpl>
    implements _$$SessionsImplCopyWith<$Res> {
  __$$SessionsImplCopyWithImpl(
      _$SessionsImpl _value, $Res Function(_$SessionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$SessionsImpl(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Iterable<Session>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsImpl implements _Sessions {
  const _$SessionsImpl({this.sessions = const <Session>[]});

  factory _$SessionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionsImplFromJson(json);

  @override
  @JsonKey()
  final Iterable<Session> sessions;

  @override
  String toString() {
    return 'Sessions(sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsImpl &&
            const DeepCollectionEquality().equals(other.sessions, sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsImplCopyWith<_$SessionsImpl> get copyWith =>
      __$$SessionsImplCopyWithImpl<_$SessionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsImplToJson(
      this,
    );
  }
}

abstract class _Sessions implements Sessions {
  const factory _Sessions({final Iterable<Session> sessions}) = _$SessionsImpl;

  factory _Sessions.fromJson(Map<String, dynamic> json) =
      _$SessionsImpl.fromJson;

  @override
  Iterable<Session> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$SessionsImplCopyWith<_$SessionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  SessionMode get sessionMode => throw _privateConstructorUsedError;
  Iterable<Question> get questions => throw _privateConstructorUsedError;
  DateTime get createdOn =>
      throw _privateConstructorUsedError; // @Default('') final String timer,
  String get progress => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      SessionMode sessionMode,
      Iterable<Question> questions,
      DateTime createdOn,
      String progress,
      String result});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionMode = null,
    Object? questions = null,
    Object? createdOn = null,
    Object? progress = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionMode: null == sessionMode
          ? _value.sessionMode
          : sessionMode // ignore: cast_nullable_to_non_nullable
              as SessionMode,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SessionMode sessionMode,
      Iterable<Question> questions,
      DateTime createdOn,
      String progress,
      String result});
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionMode = null,
    Object? questions = null,
    Object? createdOn = null,
    Object? progress = null,
    Object? result = null,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionMode: null == sessionMode
          ? _value.sessionMode
          : sessionMode // ignore: cast_nullable_to_non_nullable
              as SessionMode,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {this.id = '',
      this.sessionMode = SessionMode.study,
      this.questions = const <Question>[],
      required this.createdOn,
      this.progress = '',
      this.result = ''});

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final SessionMode sessionMode;
  @override
  @JsonKey()
  final Iterable<Question> questions;
  @override
  final DateTime createdOn;
// @Default('') final String timer,
  @override
  @JsonKey()
  final String progress;
  @override
  @JsonKey()
  final String result;

  @override
  String toString() {
    return 'Session(id: $id, sessionMode: $sessionMode, questions: $questions, createdOn: $createdOn, progress: $progress, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionMode, sessionMode) ||
                other.sessionMode == sessionMode) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sessionMode,
      const DeepCollectionEquality().hash(questions),
      createdOn,
      progress,
      result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {final String id,
      final SessionMode sessionMode,
      final Iterable<Question> questions,
      required final DateTime createdOn,
      final String progress,
      final String result}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  SessionMode get sessionMode;
  @override
  Iterable<Question> get questions;
  @override
  DateTime get createdOn;
  @override // @Default('') final String timer,
  String get progress;
  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
