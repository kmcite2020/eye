import '../main.dart';

part 'states.freezed.dart';
part 'states.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    @Default(0) final int id,
    @Default(Category()) final Category category,
    @Default('') final String statement,
    @Default('') final String a,
    @Default('') final String b,
    @Default('') final String c,
    @Default('') final String d,
    @Default('') final String answer,
    @Default('') final String explaination,
  }) = _Question;
  const Question._();

  int get categoryID => category.index;
  List<String> get options => [a, b, c, d];

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Questions with _$Questions {
  const factory Questions({
    @Default(<int, Question>{}) final Map<int, Question> questions,
  }) = _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @Default('') final String name,
    @Default(0) final int index,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Categories with _$Categories {
  const factory Categories({
    @Default(<int, Category>{}) final Map<int, Category> categories,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
