import 'package:eye/features/home/app.dart';
import 'package:eye/features/navigator.dart';
import 'package:eye/main.dart';

class RoutesTargets extends UI {
  const RoutesTargets({super.key});

  @override
  Widget build(BuildContext context) => switch (applicationBloc.isSignedIn) {
        true => authorizedTargets(context),
        false => unAuthorizedTargets(context),
      };

  Widget authorizedTargets(BuildContext context) => Column(
        children: [
          Routes.home,
          Routes.quiz,
          Routes.profile,
          Routes.sessions,
        ].map(
          (route) {
            return elevatedButton(route).pad(all: 4);
          },
        ).toList(),
      );

  static final defaultElevatedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(120, 40),
  );

  Widget elevatedButton(Routes route) {
    return IconButton.outlined(
      onPressed: onPressed(route),
      icon: Icon(route.icon),
    );
  }

  void Function()? onPressed(Routes route) {
    return switch (route() == currentAppLocation) {
      true => null,
      _ => () => navigator.to(route())
    };
  }

  Widget unAuthorizedTargets(BuildContext context) {
    return Column(
      children: [Routes.login, Routes.register].map(
        (route) {
          return elevatedButton(route).pad(all: 4);
        },
      ).toList(),
    );
  }
}
