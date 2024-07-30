import 'package:eye/main.dart';

import 'auth.dart';
import 'auth_repository.dart';
import 'users_repository.dart';

enum LoginStatus {
  emailAndPasswordValid,
  passwordNotValid,
  emailNotValid,
}

final LoginBloc loginBloc = LoginBloc();

class LoginBloc {
  final emailRM = RM.inject(() => 'test@gmail.com');
  final passwordRM = RM.inject(() => '12345678');

  String email([String? value]) => emailRM.get;
  String password([String? value]) => emailRM.get;

  LoginStatus loginStatus(String email, String password) {
    if (usersRepository.isUserFound(email)) {
      final user = usersRepository.userByEmail(email);
      if (user.password == password) {
        return LoginStatus.emailAndPasswordValid;
      } else {
        return LoginStatus.passwordNotValid;
      }
    } else {
      return LoginStatus.emailNotValid;
    }
  }

  void signIn(String email, String password) {
    final user = User(email: email, password: password);
    void Function() signIn = switch (loginStatus(email, password)) {
      LoginStatus.emailAndPasswordValid => () => authRepository.user(user),
      LoginStatus.passwordNotValid => () => authRepository.user(User()),
      LoginStatus.emailNotValid => () {
          usersRepository.addUser(user);
          authRepository.user(user);
        },
    };
    signIn();
  }
}

class LoginPage extends UI {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          initialValue: loginBloc.email(),
          onChanged: loginBloc.email,
          decoration: InputDecoration(labelText: 'email'),
        ).pad(),
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          initialValue: loginBloc.password(),
          onChanged: loginBloc.password,
          decoration: InputDecoration(labelText: 'password'),
        ).pad(),
        ElevatedButton.icon(
          onPressed: switch (loginBloc.loginStatus(
            loginBloc.email(),
            loginBloc.password(),
          )) {
            LoginStatus.emailAndPasswordValid => () => loginBloc.signIn(
                  loginBloc.email(),
                  loginBloc.password(),
                ),
            LoginStatus.passwordNotValid => null,
            LoginStatus.emailNotValid => null,
          },
          label: 'Login'.text(),
          icon: Icon(Icons.login),
        ).pad(),
      ],
    );
  }
}
