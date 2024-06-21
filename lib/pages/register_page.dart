import '../main.dart';

class RegisterPage extends UI {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Register'.text(),
      ),
      body: Column(
        children: [
          TextFormField().pad(),
          TextFormField().pad(),
          TextFormField().pad(),
          ElevatedButton(
            onPressed: () {
              authentication.login();
            },
            child: 'Register'.text(),
          ).pad(),
          TextButton(
            onPressed: () {
              pages.login();
            },
            child: 'Already on here? Login'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
