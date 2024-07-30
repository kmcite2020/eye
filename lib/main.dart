import 'package:eye/features/navigator.dart';
import 'package:eye/main.dart';

export 'dart:async';
export 'dart:developer';
export 'features/sessions/sessions_page.dart';
export 'package:eye/features/auth/register_page.dart';
export 'package:eye/features/home/categories.dart';
export 'package:eye/features/home/dashboard.dart';
export 'package:eye/features/home/welcome.dart';
export 'package:eye/features/quiz/quiz.dart';
export 'package:eye/features/core/core.dart';
export 'package:eye/features/core/spark.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart' hide Flow;
export 'package:hive_flutter/hive_flutter.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(App());

final hiveRM = RM.injectFuture(HiveStorage.initialize);

class App extends TopStatelessWidget {
  const App({super.key});
  @override
  ensureInitialization() => [hiveRM.initializeState()];

  @override
  splashScreen() => CircularProgressIndicator().center();

  static const double _value = 4;

  @override
  build(BuildContext context) {
    return OnReactive(
      () => MaterialApp.router(
        routeInformationParser: navigator.routeInformationParser,
        routerDelegate: navigator.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(
          useMaterial3: true,
          subThemesData: const FlexSubThemesData(
            defaultRadius: _value,
            cardElevation: _value,
            elevatedButtonElevation: _value,
            chipRadius: _value,
          ),
        ),
        darkTheme: FlexThemeData.dark(
          useMaterial3: true,
          subThemesData: const FlexSubThemesData(
            defaultRadius: _value,
            cardElevation: _value,
            elevatedButtonElevation: _value,
            chipRadius: _value,
          ),
        ),
        themeMode: themeMode(),
      ),
    );
  }
}

class HiveStorage extends IPersistStore {
  static Future<void> initialize() => RM.storageInitializer(HiveStorage());
  late Box box;
  @override
  delete(String key) => box.delete(key);

  @override
  init() async {
    await Hive.initFlutter();
    final app = await PackageInfo.fromPlatform();
    final name = '${app.appName}-${app.version}';
    log(name);
    box = await Hive.openBox(name);
  }

  @override
  read(String key) => box.get(key);

  @override
  write<T>(String key, T value) => box.put(key, value);
}

final themeModeRM = RM.inject(() => ThemeMode.system);
ThemeMode themeMode([ThemeMode? _themeMode]) {
  if (_themeMode != null) {
    themeModeRM.set(_themeMode);
  }
  return themeModeRM.get;
}
