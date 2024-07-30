import 'package:eye/features/home/app.dart';
import 'package:eye/main.dart';

import 'routes_targets.dart';

class LeftSidedBar extends UI {
  const LeftSidedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        switch (applicationBloc.isSignedIn) {
          true => IconButton.outlined(
              onPressed: switch (applicationBloc.isSignedIn) {
                true => null,
                false => null,
              },
              icon: Icon(
                Icons.done,
                color: Colors.green,
              ),
            ),
          false => IconButton.outlined(
              onPressed: null,
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
        }
            .pad(all: 4),
        RoutesTargets(),
        IconButton.outlined(
          icon: Icon(
            switch (themeModeRM.get) {
              ThemeMode.light => Icons.toggle_off,
              ThemeMode.dark => Icons.toggle_on,
              ThemeMode.system => Icons.color_lens,
            },
          ),
          onPressed: () => switch (themeMode()) {
            ThemeMode.light => themeMode(ThemeMode.dark),
            ThemeMode.dark => themeMode(ThemeMode.system),
            ThemeMode.system => themeMode(ThemeMode.light),
          },
        ).pad(all: 4),
        IconButton(
          splashColor: Colors.red,
          onPressed: switch (applicationBloc.isSignedIn) {
            true => applicationBloc.signOut,
            false => null,
          },
          icon: Icon(
            Icons.logout,
            color: Colors.red,
          ),
        ).pad(all: 4),
      ],
    );
  }
}
