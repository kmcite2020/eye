// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionsImpl _$$SessionsImplFromJson(Map<String, dynamic> json) =>
    _$SessionsImpl(
      sessions: (json['sessions'] as List<dynamic>?)
              ?.map((e) => Session.fromJson(e as Map<String, dynamic>)) ??
          const <Session>[],
    );

Map<String, dynamic> _$$SessionsImplToJson(_$SessionsImpl instance) =>
    <String, dynamic>{
      'sessions': instance.sessions.toList(),
    };

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String? ?? '',
      sessionMode:
          $enumDecodeNullable(_$SessionModeEnumMap, json['sessionMode']) ??
              SessionMode.study,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>)) ??
          const <Question>[],
      createdOn: DateTime.parse(json['createdOn'] as String),
      progress: json['progress'] as String? ?? '',
      result: json['result'] as String? ?? '',
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionMode': _$SessionModeEnumMap[instance.sessionMode]!,
      'questions': instance.questions.toList(),
      'createdOn': instance.createdOn.toIso8601String(),
      'progress': instance.progress,
      'result': instance.result,
    };

const _$SessionModeEnumMap = {
  SessionMode.study: 'study',
  SessionMode.exam: 'exam',
};
