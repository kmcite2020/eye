import 'package:eye/quiz/question.dart';
import 'package:eye/sessions/session_tile.dart';

import '../main.dart';

part 'sessions_page.freezed.dart';
part 'sessions_page.g.dart';

class SessionsPage extends UI {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Sessions'.text(),
        ...List.generate(
          sessionsBloc.numberOfSessions,
          (index) {
            final session = sessionsBloc.sessionAt(index);
            return SessionTile(session);
          },
        ),
      ],
    );
  }
}

final sessionsBloc = SessionsBloc();

class SessionsBloc {
  Sessions sessions([Sessions? value]) {
    if (value != null) {
      sessionsRM.state = value;
    }
    return sessionsRM.state;
  }

  Iterable<Session> iterableOfSessions([Iterable<Session>? value]) {
    if (value != null) {
      sessions(sessions().copyWith(sessions: value));
    }
    return sessions().sessions;
  }

  int get numberOfSessions => iterableOfSessions().length;
  Session sessionAt(int index) => iterableOfSessions().elementAt(index);
  final sessionsRM = RM.inject(
    () => Sessions(),
    persist: () => persisted('sessions', Sessions.fromJson),
  );

  void addSession(Session value) {
    final cache = List.of(iterableOfSessions());
    if (iterableOfSessions().any((session) => session.id == value.id)) {
      cache.removeWhere((session) => session.id == value.id);
    }
    iterableOfSessions(cache..add(value));
  }

  void removeSession(String email) {
    iterableOfSessions(
      iterableOfSessions().where((session) => session.id != email),
    );
  }

  void clear() => sessions(Sessions());
  void view(String id) {
    navigator.toDeeply('/sessions/$id');
  }
}

@freezed
class Sessions with _$Sessions {
  const factory Sessions({
    @Default(<Session>[]) final Iterable<Session> sessions,
  }) = _Sessions;

  factory Sessions.fromJson(Map<String, dynamic> json) => _$SessionsFromJson(json);
}

@freezed
class Session with _$Session {
  const factory Session({
    @Default('') final String id,
    @Default(SessionMode.study) final SessionMode sessionMode,
    @Default(<Question>[]) final Iterable<Question> questions,
    required final DateTime createdOn,
    // @Default('') final String timer,
    @Default('') final String progress,
    @Default('') final String result,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);
}

enum SessionMode { study, exam }
