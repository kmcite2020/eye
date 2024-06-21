import '../main.dart';

final categoriesRM = CategoriesRM();

class CategoriesRM {
  final categoriesRM = RM.inject(
    () => Categories(
      categories: {
        0: Category(name: 'Peds Ophthalmology', index: 0),
        1: Category(name: 'Cataracts', index: 1),
        2: Category(name: 'Glaucoma', index: 2),
      },
    ),
  );
  List<Category> get categories {
    return categoriesRM.state.categories.values.toList();
  }

  void add(Category c) {
    categoriesRM.state = Categories(
      categories: Map.of(categoriesRM.state.categories)..[c.index] = c,
    );
  }

  void remove(Category c) {
    categoriesRM.state = Categories(
      categories: Map.of(categoriesRM.state.categories)..remove(c.index),
    );
  }

  final currentCategoryRM = RM.inject(() => const Category());
  int get currentCategoryIndex => currentCategoryRM.state.index;

  void category(Category c) => currentCategoryRM.state = c;
}
