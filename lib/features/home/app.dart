import 'package:eye/features/auth/auth.dart';
import 'package:eye/features/auth/auth_repository.dart';
import 'package:eye/features/home/left_sided_bar.dart';
import 'package:eye/features/navigator.dart';
import 'package:eye/main.dart';

final applicationBloc = ApplicationBloc();

class ApplicationBloc {
  late final user = authRepository.user;
  late final isSignedIn = user().isSignedIn;
  late final email = user().email;
  void signOut() => authRepository.user(const User());
}

class Application extends UI {
  const Application(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            'EYE | ${currentAppLocation.substring(1)}'.text(textScaleFactor: .7),
            switch (applicationBloc.isSignedIn) {
              true => applicationBloc.email,
              false => 'Un-signed User',
            }
                .text(textScaleFactor: .8),
            Divider(),
          ],
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          const LeftSidedBar().pad(all: 4),
          Expanded(child: child),
        ],
      ),
    );
  }
}
