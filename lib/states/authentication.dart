// ignore_for_file: dead_code

import '../main.dart';

class Authentication {
  final authStatRM = RM.inject(() => AuthStatus.loggedIn);
  AuthStatus call([AuthStatus? authStatus]) {
    if (authStatus != null) {
      authStatRM.state = authStatus;
    }
    return authStatRM.state;
  }

  void logout() => call(AuthStatus.loggedOut);
  void login() => call(AuthStatus.loggedIn);
  void register() {
    if (true) {
      login();
    } else {
      logout();
    }
  }
}

enum AuthStatus { loggedIn, loggedOut }

final Authentication authentication = Authentication();
