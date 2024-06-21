import '../main.dart';

class Home extends UI {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'EYE'.text(),
        actions: [
          IconButton(
            onPressed: pages.settings,
            icon: const Icon(Icons.settings),
          ).pad(right: 8)
        ],
      ),
      body: const Column(
        children: [
          Welcome(),
          CategoriesUI(),
        ],
      ),
    );
  }
}
