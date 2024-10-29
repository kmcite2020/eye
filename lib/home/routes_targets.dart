import 'package:eye/main.dart';

class RoutesTargets extends UI {
  const RoutesTargets({super.key});

  @override
  Widget build(BuildContext context) => switch (currentUser.isSignedIn) {
        true => authorizedTargets(context),
        false => unAuthorizedTargets(context),
      };

  Widget authorizedTargets(BuildContext context) => Column(
        children: [
          Routes.home,
          Routes.quiz,
          Routes.profile,
          Routes.session,
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
      children: [Routes.auth].map(
        (route) {
          return elevatedButton(route).pad(all: 4);
        },
      ).toList(),
    );
  }
}
