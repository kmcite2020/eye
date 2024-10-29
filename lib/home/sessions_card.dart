import 'package:eye/sessions/session_tile.dart';
import 'package:eye/main.dart';

class SessionsCard extends UI {
  const SessionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Sessions Card'.text().pad(),
        switch (sessionsBloc.sessionsRM.state) {
          const (Sessions()) => const CircularProgressIndicator(),
          Sessions(sessions: var sessions) when sessions.isEmpty => 'No sessions available'.text(),
          Sessions(sessions: var sessions) => Column(
              children: [
                ...sessions.map(
                  (session) {
                    return SessionTileDashboard(session);
                  },
                ),
              ],
            ),
        },
      ],
    );
  }
}
