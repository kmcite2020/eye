import '../main.dart';

abstract class TopUI extends TopStatelessWidget {
  const TopUI({super.key});

  ThemeData get theme;
  ThemeData get darkTheme;
  ThemeMode get themeMode;

  Widget home(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: darkTheme,
        themeMode: themeMode,
        theme: theme,
        home: home(context),
      ),
    );
  }
}
