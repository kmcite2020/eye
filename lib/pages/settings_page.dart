import 'package:eye/components/tap_ui.dart';
import 'package:eye/main.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: pages.home,
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: authentication.logout,
            icon: const Icon(Icons.logout),
          ).pad(right: 8),
        ],
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            value: themeModeRM.state,
            items: ThemeMode.values
                .map(
                  (themeMode) => DropdownMenuItem(
                    value: themeMode,
                    child: themeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (value) {
              themeModeRM.state = value ?? ThemeMode.system;
            },
          ).pad(all: 4),
          'Add Category'.text(),
          TextFormField(
            initialValue: categoryRM.state.name,
            onChanged: (value) {
              categoryRM.state = categoryRM.state.copyWith(name: value);
            },
          ).pad(all: 8),
          Button(
            child: 'Add Category'.text(),
            onTap: () {
              categoriesRM.add(
                categoryRM.state.copyWith(
                  index: categoriesRM.categories.length,
                ),
              );
            },
          ).pad(all: 4),
        ],
      ),
    );
  }
}

final themeModeRM = RM.inject(() => ThemeMode.system);

final categoryRM = RM.inject(() => Category());
