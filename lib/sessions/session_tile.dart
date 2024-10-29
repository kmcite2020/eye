import 'package:eye/main.dart';

class SessionTileDashboard extends SessionTile {
  const SessionTileDashboard(super.session, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text('Session - Dashboard'),
        subtitle: Text(session.toString()),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}

class SessionTile extends UI {
  const SessionTile(this.session, {super.key});
  final Session session;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Session Mode: ${session.sessionMode}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            Text(
              'Questions: ${session.questions.length}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () => sessionsBloc.removeSession(session.id),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.visibility_outlined, color: Colors.blue),
                  onPressed: () => sessionsBloc.view(session.id),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
