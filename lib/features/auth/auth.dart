import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Users with _$Users {
  const factory Users({
    @Default(<User>[]) final List<User> users,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default('') final String email,
    @Default('') final String password,
  }) = _User;
  const User._();
  bool get isNotSignedIn => email == '';
  bool get isSignedIn => email != '';

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
