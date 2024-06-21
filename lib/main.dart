import 'package:eye/main.dart';

export 'package:eye/components/categories.dart';
export 'package:eye/components/top_ui.dart';
export 'package:eye/components/ui.dart';
export 'package:eye/components/welcome.dart';
export 'package:eye/pages/category_page.dart';
export 'package:eye/pages/home_page.dart';
export 'package:eye/pages/login_page.dart';
export 'package:eye/pages/question_page.dart';
export 'package:eye/pages/register_page.dart';
export 'package:eye/pages/settings_page.dart';
export 'package:eye/states/authentication.dart';
export 'package:eye/states/categories.dart';
export 'package:eye/states/core.dart';
export 'package:eye/states/pages.dart';
export 'package:eye/states/questions.dart';
export 'package:eye/states/states.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(App());

class App extends TopUI {
  const App({super.key});

  @override
  Widget home(BuildContext context) {
    return PopScope(
      child: switch (authentication()) {
        AuthStatus.loggedIn => switch (pages()) {
            Pages.mcq => const QuestionPage(),
            Pages.category => const CategoryPage(),
            Pages.settings => const SettingsPage(),
            _ => const Home(),
          },
        AuthStatus.loggedOut => switch (pages()) {
            Pages.register => const RegisterPage(),
            _ => const LoginPage(),
          },
      },
    );
  }

  @override
  ThemeData get darkTheme => FlexThemeData.dark(
        useMaterial3: true,
        subThemesData: const FlexSubThemesData(
          defaultRadius: 8,
        ),
        scheme: FlexScheme.deepOrangeM3,
      );

  @override
  ThemeData get theme {
    return FlexThemeData.light(
      useMaterial3: true,
      subThemesData: const FlexSubThemesData(
        defaultRadius: 8,
      ),
      scheme: FlexScheme.deepPurple,
    );
  }

  @override
  ThemeMode get themeMode => themeModeRM.state;
}
