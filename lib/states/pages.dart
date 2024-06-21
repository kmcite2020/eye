import 'package:eye/main.dart';

final pages = PagesRM();

class PagesRM {
  final pagesRM = RM.inject(() => Pages.login);
  Pages call([Pages? page]) {
    if (page != null) {
      pagesRM.state = page;
    }
    return pagesRM.state;
  }

  void home() => call(Pages.home);
  void login() => call(Pages.login);
  void register() => call(Pages.register);
  void question([Question? question]) {
    call(Pages.mcq);
    if (question != null) questionsRM.question(question);
  }

  void category([Category? category]) {
    call(Pages.category);
    if (category != null) categoriesRM.category(category);
  }

  void settings() => call(Pages.settings);
}

enum Pages { home, login, register, mcq, category, settings }
