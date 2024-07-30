import 'dart:convert';

import '../../main.dart';
import 'auth.dart';

final _usersRepositoryRM = RM.inject(() => UsersRepository());
UsersRepository get usersRepository => _usersRepositoryRM.get;

class UsersRepository {
  /// Models
  final usersRM = RM.inject<Users>(
    () => Users(),
    persist: () => PersistState(
      key: 'users',
      fromJson: (json) => Users.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s.toJson()),
    ),
  );

  /// Modifiers
  Users users([Users? value]) {
    if (value != null) {
      usersRM.set(value);
    }
    return usersRM.get;
  }

  List<User> listOfUsers([List<User>? value]) {
    if (value != null) {
      users(
        users().copyWith(users: value),
      );
    }
    return users().users;
  }

  void addUser(User user) {
    listOfUsers(
      listOfUsers()..add(user),
    );
  }

  void removeUser(String email) {
    listOfUsers(
      listOfUsers().where(
        (user) {
          return user.email != email;
        },
      ).toList(),
    );
  }

  /// APIs
  bool isUserFound(String email) => listOfUsers().any((user) => user.email == email);
  User userByEmail(String email) => listOfUsers().firstWhere((user) => user.email == email);
}
