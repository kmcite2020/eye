// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    @Default(0) final int id,
    @Default(Category()) final Category category,
    @Default('') final String statement,
    @Default('') final String a,
    @Default('') final String b,
    @Default('') final String c,
    @Default('') final String d,
    @Default('') final String answer,
    @Default('') final String explanation,
    @Default('') final String userAnswer,
    @Default(false) final bool isSubmitted,
  }) = _Question;
  const Question._();
  bool get isAnswered => userAnswer == '';
  List<String> get options => [a, b, c, d];
  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @Default('') final String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class QuestionsForQuiz with _$QuestionsForQuiz {
  const factory QuestionsForQuiz({
    @Default(0) final int currentIndex,
    @Default(<Question>[]) final Iterable<Question> questions,
  }) = _QuestionsForQuiz;

  factory QuestionsForQuiz.fromJson(Map<String, dynamic> json) => _$QuestionsForQuizFromJson(json);
}
