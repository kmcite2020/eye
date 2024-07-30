import '../../main.dart';
import 'auth.dart';
import 'auth_repository.dart';
import 'users_repository.dart';

final registerBloc = RegisterBloc();

class RegisterBloc {
  /// REACTIVE MODELS
  final emailRM = RM.inject(() => 'test@gmail.com');
  final passwordRM = RM.inject(() => '12345678');

  /// STATE MODIFIERS
  String email([String? email]) => emailRM.get;
  String password([String? password]) => passwordRM.get;

  /// APIs
  late final isUserFound = usersRepository.isUserFound;
  void signUp(String email, String password) {
    authRepository.user(
      User(
        email: email,
        password: password,
      ),
    );
  }
}

class RegisterPage extends UI {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          initialValue: registerBloc.email(),
          onChanged: registerBloc.email,
          decoration: InputDecoration(labelText: 'email'),
          validator: (value) {
            if (registerBloc.isUserFound(value!)) {
              return 'User is already found. Kindly login.';
            }
            return null;
          },
        ).pad(),
        TextFormField(
          initialValue: registerBloc.password(),
          onChanged: registerBloc.password,
          decoration: InputDecoration(labelText: 'password'),
          enabled: !registerBloc.isUserFound(registerBloc.email()),
        ).pad(),
        ElevatedButton.icon(
          onPressed: switch (registerBloc.isUserFound(registerBloc.email())) {
            true => null,
            false => () {
                registerBloc.signUp(
                  registerBloc.email(),
                  registerBloc.password(),
                );
              },
          },
          label: 'Register'.text(),
          icon: Icon(Icons.supervised_user_circle),
        ).pad(),
      ],
    );
  }
}
