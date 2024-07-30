import 'package:eye/features/navigator.dart';
import 'package:eye/main.dart';
import '../quiz/question.dart';

class SessionPage extends UI {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Create New Session'.text(),
        'Session Mode'.text(),
        DropdownButtonFormField(
          value: sessionBloc.sessionMode(),
          items: SessionMode.values.map(
            (mode) {
              return DropdownMenuItem(
                value: mode,
                child: mode.name.toUpperCase().text(),
              );
            },
          ).toList(),
          onChanged: sessionBloc.sessionMode,
        ),
        ...List.generate(
          categoriesBloc.iterableOfCategories().length,
          (i) => Container(
            child: categoriesBloc.category(i).text(),
          ),
        ),
        ElevatedButton(
          onPressed: sessionBloc.createNewSession,
          child: 'CREATE'.text(),
        ),
      ],
    );
  }
}

final sessionBloc = SessionBloc();

class SessionBloc {
  void createNewSession() {
    sessionsBloc.addSession(session().copyWith(id: randomID, createdOn: DateTime.now()));
    navigator.to(Routes.sessions());
  }

  final sessionRM = RM.inject(
    () => Session(createdOn: DateTime.now()),
  );

  Session session([Session? session]) {
    if (session != null) {
      sessionRM.set(session);
    }
    return sessionRM.get;
  }

  SessionMode sessionMode([SessionMode? _mode]) {
    if (_mode != null) {
      session(
        session().copyWith(sessionMode: _mode),
      );
    }
    return session().sessionMode;
  }

  Iterable<Question> questions(Iterable<Question>? value) {
    if (value != null) {
      session(
        session().copyWith(questions: value),
      );
    }
    return session().questions;
  }
}
