// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      category: json['category'] == null
          ? const Category()
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      statement: json['statement'] as String? ?? '',
      a: json['a'] as String? ?? '',
      b: json['b'] as String? ?? '',
      c: json['c'] as String? ?? '',
      d: json['d'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      explanation: json['explanation'] as String? ?? '',
      userAnswer: json['userAnswer'] as String? ?? '',
      isSubmitted: json['isSubmitted'] as bool? ?? false,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'statement': instance.statement,
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
      'answer': instance.answer,
      'explanation': instance.explanation,
      'userAnswer': instance.userAnswer,
      'isSubmitted': instance.isSubmitted,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$QuestionsForQuizImpl _$$QuestionsForQuizImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionsForQuizImpl(
      currentIndex: (json['currentIndex'] as num?)?.toInt() ?? 0,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>)) ??
          const <Question>[],
    );

Map<String, dynamic> _$$QuestionsForQuizImplToJson(
        _$QuestionsForQuizImpl instance) =>
    <String, dynamic>{
      'currentIndex': instance.currentIndex,
      'questions': instance.questions.toList(),
    };
