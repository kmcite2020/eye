// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eye/features/quiz/data.dart';
import 'package:eye/main.dart';

import 'countdown_bar.dart';
import 'question.dart';

class QuizPage extends UI {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        QuizProgressBar(),
        CountdownBar(),
        // QuestionBody(),
      ],
    );
  }
}

class QuestionBody extends UI {
  const QuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: questionIndexRM.set,
        itemCount: questionsRM.get.questions.length,
        controller: controller,
        itemBuilder: (context, index) {
          final Question question = questionsRM.get.questions.elementAt(index);
          return ListTile(
            title: question.statement.text(),
            subtitle: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: question.options.map(
                    (option) {
                      return Visibility(
                        replacement: () {
                          if (question.answer == question.userAnswer &&
                              option == question.userAnswer) {
                            return Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: Colors.yellow),
                                  ),
                                  child: option.text().pad(),
                                ),
                                Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ).pad(),
                              ],
                            );
                          } else if (question.answer != question.userAnswer &&
                              option == question.userAnswer) {
                          } else if (option == question.userAnswer) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.red),
                              ),
                              child: option.text().pad(),
                            );
                          } else if (option == question.answer) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.green),
                              ),
                              child: option.text().pad(),
                            );
                          }
                          return option.text();
                        }()
                            .pad(),
                        visible: !question.isAnswered,
                        child: RadioListTile(
                          value: option,
                          title: option.text(),
                          groupValue: question.userAnswer,
                          onChanged: (value) {
                            questionsRM.set(
                              questionsRM.get.copyWith(
                                questions: questionsRM.get.questions.update(
                                  question.copyWith(userAnswer: value!),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),
                ElevatedButton(
                  onPressed: question.isSubmitted
                      ? null
                      : () {
                          questionsRM.set(
                            questionsRM.get.copyWith(
                              questions: questionsRM.get.questions.update(
                                question.copyWith(isSubmitted: true),
                              ),
                            ),
                          );
                        },
                  child: 'Submit'.text(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class QuizProgressBar extends UI {
  const QuizProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: questionIndexRM.get * constraints.maxWidth / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AlwaysStoppedAnimation(Colors.red).value,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                      Colors.red,
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

final controller = PageController();
final questionsRM = RM.inject(
  () => QuestionsForQuiz(
    currentIndex: 0,
    questions: sampleQuestions,
  ),
);

extension ListExtensions<T> on Iterable<T> {
  Iterable<T> update(T toItem) {
    return map(
      (T item) {
        if ((item as dynamic).id == (toItem as dynamic).id) {
          return toItem;
        } else {
          return item as T;
        }
      },
    );
  }
}

final questionIndexRM = RM.inject(() => 0);
