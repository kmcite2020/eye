import 'package:eye/main.dart';

class SessionTileDashboard extends SessionTile {
  const SessionTileDashboard(super.session, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: 'SessionTile - Dashboard\n$session'.text().pad(),
    ).pad();
  }
}

class SessionTile extends UI {
  const SessionTile(this.session, {super.key});
  final Session session;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'sessionMode: ${session.sessionMode}'.text(),
          'numberOfQuestions: ${session.questions.length}'.text(),
          Row(
            children: [
              InputChip(
                label: Icon(Icons.delete),
                onPressed: () => sessionsBloc.removeSession(session.id),
              ).pad(all: 4),
              InputChip(
                label: Icon(Icons.view_agenda),
                onPressed: () => sessionsBloc.view(session.id),
              ).pad(all: 4),
            ],
          ),
        ],
      ).pad(),
    );
  }
}
