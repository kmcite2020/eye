import '../main.dart';

class QuestionPage extends UI {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '235'.text(),
        actions: [
          IconButton(
            onPressed: pages.category,
            icon: const Icon(Icons.arrow_back),
          ).pad(right: 8),
        ],
      ),
      body: Column(
        children: [
          'QUESTION PAGE'.text(),
        ],
      ),
    );
  }
}
