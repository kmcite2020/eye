import 'package:eye/home/app.dart';
import 'package:eye/sessions/sessions_subspace.dart';
import 'package:eye/user_profile/user_profile.dart';

import 'main.dart';
import 'sessions/session_page.dart';

String get currentAppLocation => navigator.routeData.location;

enum Routes {
  home('/home', 'Home', Icons.home_rounded),
  auth('/auth', 'Auth', Icons.login_rounded),
  quiz('/quiz', 'Quiz', Icons.quiz_rounded),
  profile('/profile', 'Profile', Icons.account_circle_rounded),
  sessions('/sessions', 'History', Icons.history_rounded),
  session('/session', 'Session', Icons.memory_rounded),
  sessionDetails('/sessions/:index', 'Session Details', Icons.details_rounded);

  const Routes([this.route = '/', this.display = '', this.icon = Icons.home_rounded]);
  final String route;
  final String display;
  final IconData icon;
  String call() => route;
}

final InjectedNavigator navigator = RM.injectNavigator(
  initialLocation: currentUser.isSignedIn ? Routes.home() : Routes.auth(),
  routes: {
    '/': (_) => RouteWidget(
          builder: Application.new,
          routes: {
            Routes.home(): (_) => Dashboard(),
            Routes.auth(): (_) => AuthUI(),
            Routes.quiz(): (_) => QuizPage(),
            Routes.profile(): (_) => UserProfile(),
            Routes.session(): (_) => SessionPage(),
          },
          transitionsBuilder: RM.transitions.none(),
        ),
    Routes.sessions(): (_) => RouteWidget(
          builder: SessionsSubspace.new,
          routes: {
            '/': (data) {
              try {
                final String index = data.pathParams['index'] as String;
                final session = sessionsBloc.sessionAt(int.parse(index));
                return SessionDetailsPage(session: session);
              } catch (e) {
                // Log the error for debugging purposes
                print('Error in session details route: $e');
                return data.unKnownRoute;
              }
            },
          },
        ),
  },
  onNavigateBack: (data) {
    if (data == null) {
      navigator.toDialog(ExitDialog());
      return false;
    }
    return true;
  },
);

class ExitDialog extends UI {
  const ExitDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          'Do you want to Quit App'.text(),
          ElevatedButton(
            child: 'No'.text(),
            onPressed: () => navigator.back(),
          ).pad(),
          ElevatedButton(
            child: 'Quit'.text(),
            onPressed: () => navigator.forceBack(),
          ).pad(),
        ],
      ),
    );
  }
}
