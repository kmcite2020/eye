import 'package:eye/quiz/question.dart';
import 'package:eye/main.dart';
part 'categories.freezed.dart';
part 'categories.g.dart';

final categoriesBloc = CategoriesBloc();

class CategoriesBloc {
  final categoriesRM = RM.inject(
    () => Categories(),
  );
  Categories categories([Categories? value]) {
    if (value != null) {
      categoriesRM.state = value;
    }
    return categoriesRM.state;
  }

  Iterable<Category> iterableOfCategories([Iterable<Category>? value]) {
    if (value != null) {
      categories(
        categories().copyWith(categories: value),
      );
    }
    return categories().categories;
  }

  void addCategory(Category category) {
    final _cache = List.of(iterableOfCategories());
    if (iterableOfCategories().any(
      (element) => element.name == category.name,
    )) {
      _cache.removeWhere(
        (element) => element.name == category.name,
      );
    }
    iterableOfCategories(_cache);
  }

  void removeCategory(String name) {
    iterableOfCategories(
      iterableOfCategories().where(
        (element) => element.name == name,
      ),
    );
  }

  Category category(int i) => iterableOfCategories().elementAt(i);
}

@freezed
class Categories with _$Categories {
  const factory Categories({
    @Default(<Category>[]) final Iterable<Category> categories,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}

class CategoriesUI extends UI {
  const CategoriesUI({super.key});

  @override
  Widget build(context) {
    return Column();
  }
}
