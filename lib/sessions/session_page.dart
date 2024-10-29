import 'package:eye/main.dart';
import '../quiz/question.dart';

class SessionPage extends UI {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create New Session',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 24),
          Text(
            'Session Mode',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            value: sessionBloc.sessionMode(),
            items: SessionMode.values.map(
              (mode) {
                return DropdownMenuItem(
                  value: mode,
                  child: Text(mode.name.toUpperCase()),
                );
              },
            ).toList(),
            onChanged: sessionBloc.sessionMode,
          ),
          const SizedBox(height: 24),
          Text(
            'Categories',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: categoriesBloc.iterableOfCategories().length,
              itemBuilder: (context, i) => ListTile(
                leading: Icon(Icons.category),
                title: Text(categoriesBloc.category(i).name),
              ),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: sessionBloc.createNewSession,
              icon: Icon(Icons.add),
              label: Text('CREATE'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final sessionBloc = SessionBloc();

class SessionBloc {
  void createNewSession() async {
    sessionsBloc.addSession(session().copyWith(id: randomID, createdOn: DateTime.now()));
    await navigator.to(Routes.sessions() + Routes.session());
  }

  final sessionRM = RM.inject(
    () => Session(createdOn: DateTime.now()),
  );

  Session session([Session? session]) {
    if (session != null) {
      sessionRM.state = session;
    }
    return sessionRM.state;
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
