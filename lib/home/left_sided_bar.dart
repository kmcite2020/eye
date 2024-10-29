import 'package:eye/main.dart';

import 'routes_targets.dart';

class LeftSidedBar extends UI {
  const LeftSidedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        switch (currentUser.isSignedIn) {
          true => IconButton.outlined(
              onPressed: switch (currentUser.isSignedIn) {
                true => null,
                false => null,
              },
              icon: Icon(
                Icons.done,
                color: Colors.green.shade400,
              ),
            ),
          false => IconButton.outlined(
              onPressed: null,
              icon: Icon(
                Icons.close,
                color: Colors.red.shade400,
              ),
            ),
        }
            .pad(all: 4),
        RoutesTargets(),
        IconButton.outlined(
          icon: Icon(
            switch (themeMode()) {
              true => Icons.toggle_on,
              false => Icons.toggle_off,
            },
            color: Colors.blue.shade400,
          ),
          onPressed: () => switch (themeMode()) {
            false => themeMode(true),
            true => themeMode(false),
          },
        ).pad(all: 4),
        IconButton(
          splashColor: Colors.red.shade300,
          onPressed: switch (currentUser.isSignedIn) {
            true => logOut,
            false => null,
          },
          icon: Icon(
            Icons.logout,
            color: Colors.red.shade400,
          ),
        ).pad(all: 4),
      ],
    );
  }
}
