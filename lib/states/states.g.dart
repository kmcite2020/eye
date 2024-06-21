// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

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
      explaination: json['explaination'] as String? ?? '',
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
      'explaination': instance.explaination,
    };

_$QuestionsImpl _$$QuestionsImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsImpl(
      questions: (json['questions'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), Question.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <int, Question>{},
    );

Map<String, dynamic> _$$QuestionsImplToJson(_$QuestionsImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions.map((k, e) => MapEntry(k.toString(), e)),
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      name: json['name'] as String? ?? '',
      index: (json['index'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'index': instance.index,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      categories: (json['categories'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), Category.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <int, Category>{},
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'categories':
          instance.categories.map((k, e) => MapEntry(k.toString(), e)),
    };
