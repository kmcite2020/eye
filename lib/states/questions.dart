import 'package:eye/main.dart';

final questionsRM = QuestionsRM();

class QuestionsRM {
  final questionsRM = RM.inject(
    () => Questions(
      questions: {
        0: Question(
          statement: 'sdbjsd',
        ),
      },
    ),
  );

  List<Question> get questions => questionsRM.state.questions.values.toList();

  void add(Question q) {
    questionsRM.state = Questions(
      questions: Map.of(questionsRM.state.questions)..[q.id] = q,
    );
  }

  void remove(Question q) {
    questionsRM.state = Questions(
      questions: Map.of(questionsRM.state.questions)..remove(q.id),
    );
  }

  int get currentQuestionID => currentQuestionRM.state.id;

  final currentQuestionRM = RM.inject(() => Question());

  void question(Question question) => currentQuestionRM.state = question;

  bool isSameCategory(Question question) =>
      question.category.index == categoriesRM.currentCategoryIndex;
}
