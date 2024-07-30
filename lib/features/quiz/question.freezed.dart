// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String get c => throw _privateConstructorUsedError;
  String get d => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get userAnswer => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int id,
      Category category,
      String statement,
      String a,
      String b,
      String c,
      String d,
      String answer,
      String explanation,
      String userAnswer,
      bool isSubmitted});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? statement = null,
    Object? a = null,
    Object? b = null,
    Object? c = null,
    Object? d = null,
    Object? answer = null,
    Object? explanation = null,
    Object? userAnswer = null,
    Object? isSubmitted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Category category,
      String statement,
      String a,
      String b,
      String c,
      String d,
      String answer,
      String explanation,
      String userAnswer,
      bool isSubmitted});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? statement = null,
    Object? a = null,
    Object? b = null,
    Object? c = null,
    Object? d = null,
    Object? answer = null,
    Object? explanation = null,
    Object? userAnswer = null,
    Object? isSubmitted = null,
  }) {
    return _then(_$QuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl extends _Question {
  const _$QuestionImpl(
      {this.id = 0,
      this.category = const Category(),
      this.statement = '',
      this.a = '',
      this.b = '',
      this.c = '',
      this.d = '',
      this.answer = '',
      this.explanation = '',
      this.userAnswer = '',
      this.isSubmitted = false})
      : super._();

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final Category category;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey()
  final String a;
  @override
  @JsonKey()
  final String b;
  @override
  @JsonKey()
  final String c;
  @override
  @JsonKey()
  final String d;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String explanation;
  @override
  @JsonKey()
  final String userAnswer;
  @override
  @JsonKey()
  final bool isSubmitted;

  @override
  String toString() {
    return 'Question(id: $id, category: $category, statement: $statement, a: $a, b: $b, c: $c, d: $d, answer: $answer, explanation: $explanation, userAnswer: $userAnswer, isSubmitted: $isSubmitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, statement, a, b, c,
      d, answer, explanation, userAnswer, isSubmitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question extends Question {
  const factory _Question(
      {final int id,
      final Category category,
      final String statement,
      final String a,
      final String b,
      final String c,
      final String d,
      final String answer,
      final String explanation,
      final String userAnswer,
      final bool isSubmitted}) = _$QuestionImpl;
  const _Question._() : super._();

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  int get id;
  @override
  Category get category;
  @override
  String get statement;
  @override
  String get a;
  @override
  String get b;
  @override
  String get c;
  @override
  String get d;
  @override
  String get answer;
  @override
  String get explanation;
  @override
  String get userAnswer;
  @override
  bool get isSubmitted;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({this.name = ''});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Category(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({final String name}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionsForQuiz _$QuestionsForQuizFromJson(Map<String, dynamic> json) {
  return _QuestionsForQuiz.fromJson(json);
}

/// @nodoc
mixin _$QuestionsForQuiz {
  int get currentIndex => throw _privateConstructorUsedError;
  Iterable<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsForQuizCopyWith<QuestionsForQuiz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsForQuizCopyWith<$Res> {
  factory $QuestionsForQuizCopyWith(
          QuestionsForQuiz value, $Res Function(QuestionsForQuiz) then) =
      _$QuestionsForQuizCopyWithImpl<$Res, QuestionsForQuiz>;
  @useResult
  $Res call({int currentIndex, Iterable<Question> questions});
}

/// @nodoc
class _$QuestionsForQuizCopyWithImpl<$Res, $Val extends QuestionsForQuiz>
    implements $QuestionsForQuizCopyWith<$Res> {
  _$QuestionsForQuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsForQuizImplCopyWith<$Res>
    implements $QuestionsForQuizCopyWith<$Res> {
  factory _$$QuestionsForQuizImplCopyWith(_$QuestionsForQuizImpl value,
          $Res Function(_$QuestionsForQuizImpl) then) =
      __$$QuestionsForQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex, Iterable<Question> questions});
}

/// @nodoc
class __$$QuestionsForQuizImplCopyWithImpl<$Res>
    extends _$QuestionsForQuizCopyWithImpl<$Res, _$QuestionsForQuizImpl>
    implements _$$QuestionsForQuizImplCopyWith<$Res> {
  __$$QuestionsForQuizImplCopyWithImpl(_$QuestionsForQuizImpl _value,
      $Res Function(_$QuestionsForQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? questions = null,
  }) {
    return _then(_$QuestionsForQuizImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Iterable<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsForQuizImpl implements _QuestionsForQuiz {
  const _$QuestionsForQuizImpl(
      {this.currentIndex = 0, this.questions = const <Question>[]});

  factory _$QuestionsForQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsForQuizImplFromJson(json);

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final Iterable<Question> questions;

  @override
  String toString() {
    return 'QuestionsForQuiz(currentIndex: $currentIndex, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsForQuizImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentIndex,
      const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsForQuizImplCopyWith<_$QuestionsForQuizImpl> get copyWith =>
      __$$QuestionsForQuizImplCopyWithImpl<_$QuestionsForQuizImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsForQuizImplToJson(
      this,
    );
  }
}

abstract class _QuestionsForQuiz implements QuestionsForQuiz {
  const factory _QuestionsForQuiz(
      {final int currentIndex,
      final Iterable<Question> questions}) = _$QuestionsForQuizImpl;

  factory _QuestionsForQuiz.fromJson(Map<String, dynamic> json) =
      _$QuestionsForQuizImpl.fromJson;

  @override
  int get currentIndex;
  @override
  Iterable<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsForQuizImplCopyWith<_$QuestionsForQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
