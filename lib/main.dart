import 'package:eye/main.dart';
export 'package:eye/auth/auth.dart';
export 'package:eye/navigator.dart';
export 'package:manager/manager.dart' hide Category, navigator;

export 'dart:async';

export 'package:eye/home/categories.dart';
export 'package:eye/home/dashboard.dart';
export 'package:eye/home/welcome.dart';
export 'package:eye/quiz/quiz.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'sessions/sessions_page.dart';

void main() async {
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  // ignore: unused_local_variable
  final appInfo = await PackageInfo.fromPlatform();
  await RM.storageInitializer(HiveStorage());
  runApp(App());
}

class App extends DeclarativeUI {
  const App({super.key});
  static const double _value = 4;
  @override
  ThemeData get theme => switch (themeMode()) {
        false => FlexThemeData.light(
            useMaterial3: true,
            subThemesData: const FlexSubThemesData(
              defaultRadius: _value,
              cardElevation: _value,
              elevatedButtonElevation: _value,
              chipRadius: _value,
            ),
          ),
        true => FlexThemeData.dark(
            useMaterial3: true,
            subThemesData: const FlexSubThemesData(
              defaultRadius: _value,
              cardElevation: _value,
              elevatedButtonElevation: _value,
              chipRadius: _value,
            ),
          ),
      };
  @override
  InjectedNavigator get navigator_ => navigator;
}

final themeModeRM = RM.inject(() => true);
bool themeMode([bool? _themeMode]) {
  if (_themeMode != null) {
    themeModeRM.state = _themeMode;
  }
  return themeModeRM.state;
}
