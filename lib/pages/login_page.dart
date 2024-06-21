import '../main.dart';

class LoginPage extends UI {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Login'.text(),
      ),
      body: Column(
        children: [
          TextFormField().pad(),
          TextFormField().pad(),
          ElevatedButton(
            onPressed: () {
              authentication.login();
            },
            child: "Login".text(),
          ).pad(),
          TextButton(
            onPressed: () {
              pages.register();
            },
            child: 'New here? Register'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
