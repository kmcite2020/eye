import 'package:eye/features/auth/login_page.dart';
import 'package:eye/features/home/app.dart';
import 'package:eye/features/sessions/sessions_subspace.dart';
import 'package:eye/features/user_profile/user_profile.dart';

import '../main.dart';
import 'sessions/session_page.dart';

enum Routes {
  home('/home', 'Home', Icons.home),
  login('/login', 'Login', Icons.login),
  register('/forgot_password', 'New', Icons.supervised_user_circle),
  quiz('/quiz', 'Quiz', Icons.quiz),
  profile('/profile', 'Profile', Icons.verified_user),
  sessions('/sessions', 'History', Icons.history),
  session('/session', 'Session', Icons.sensors_sharp);

  const Routes([this.route = '/', this.display = '', this.icon = Icons.home]);
  final String route;
  final String display;
  final IconData icon;
  String call() => route;
}

String get currentAppLocation => navigator.routeData.location;

final InjectedNavigator navigator = RM.injectNavigator(
  initialLocation: switch (applicationBloc.isSignedIn) {
    true => Routes.home(),
    false => Routes.login(),
  },
  routes: {
    '/': (_) => RouteWidget(
          builder: Application.new,
          routes: {
            Routes.home(): (_) => Dashboard(),
            Routes.login(): (_) => LoginPage(),
            Routes.register(): (_) => RegisterPage(),
            Routes.quiz(): (_) => QuizPage(),
            Routes.profile(): (_) => UserProfile(),
            // Routes.sessions(): (_) => SessionsPage(),
            Routes.session(): (_) => SessionPage(),
          },
          transitionsBuilder: RM.transitions.none(),
        ),
    '/sessions': (_) {
      return RouteWidget(
        builder: SessionsSubspace.new,
        routes: {
          '/:index': (data) {
            try {
              final String index = data.pathParams['index'] as String;
              final session = sessionsBloc.sessionAt(int.parse(index));
              return SessionDetailsPage(session: session);
            } catch (e) {
              return data.unKnownRoute;
            }
          },
        },
      );
    }
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
