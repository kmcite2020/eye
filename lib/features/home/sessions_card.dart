import 'package:eye/features/sessions/session_tile.dart';
import 'package:eye/main.dart';

class SessionsCard extends UI {
  const SessionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Sessions Card'.text().pad(),
        ...List.generate(
          sessionsBloc.numberOfSessions,
          (i) {
            final session = sessionsBloc.iterableOfSessions().elementAt(i);
            return SessionTileDashboard(session);
          },
        ),
      ],
    );
  }
}
