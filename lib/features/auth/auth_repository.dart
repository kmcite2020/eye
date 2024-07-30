import 'dart:convert';

import 'package:eye/main.dart';

import '../navigator.dart';
import 'auth.dart';

final _authRepositoryRM = RM.inject(() => AuthRepository());
AuthRepository get authRepository => _authRepositoryRM.get;

class AuthRepository {
  final userRM = RM.inject<User>(
    () => User(),
    persist: () => PersistState(
      key: 'auth',
      fromJson: (json) => User.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
    sideEffects: SideEffects.onData(
      (data) => switch (data.isSignedIn) {
        true => navigator.toAndRemoveUntil(Routes.home()),
        false => navigator.toAndRemoveUntil(Routes.login()),
      },
    ),
    autoDisposeWhenNotUsed: false,
  );

  User user([User? value]) {
    if (value != null) {
      userRM.set(value);
    }
    return userRM.get;
  }

  bool get isSignedIn => user().isSignedIn;
  bool get isNotSignedIn => user().isNotSignedIn;
}
