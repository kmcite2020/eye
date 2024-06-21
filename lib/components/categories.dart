import 'package:eye/main.dart';

import 'tap_ui.dart';

class CategoriesUI extends UI {
  const CategoriesUI({super.key});

  @override
  Widget build(context) {
    return ListView(
      shrinkWrap: true,
      children: categoriesRM.categories.map(
        (category) {
          return Button(
            onTap: () => pages.category(category),
            child: Row(
              children: [
                category.name.text(),
              ],
            ),
          ).pad(all: 4);
        },
      ).toList(),
    );
  }
}
