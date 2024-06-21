import '../main.dart';

class CategoryPage extends UI {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '${categoriesRM.currentCategoryIndex}'.text(),
        actions: [
          IconButton(
            onPressed: pages.home,
            icon: const Icon(Icons.arrow_back),
          ).pad(right: 8)
        ],
      ),
      body: Column(
        children: questionsRM.questions.where(
          (question) {
            return questionsRM.isSameCategory(question);
          },
        ).map(
          (question) {
            return ElevatedButton(
              onPressed: () {
                pages.question(question);
              },
              child: ListTile(
                title: question.statement.text(),
                subtitle: Column(
                  children: question.options.map(
                    (e) {
                      return RadioListTile(
                        value: e,
                        groupValue: question.answer,
                        onChanged: (value) {},
                      );
                    },
                  ).toList(),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

abstract class Exam {
  List<Question> get questions;
}

class QuestionsToBeTestedIn extends Exam {
  @override
  List<Question> get questions => throw UnimplementedError();
}

class AnsweredQuestions {}
