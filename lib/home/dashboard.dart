import '../main.dart';

class Dashboard extends UI {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcome(),
        CategoriesUI(),
      ],
    );
  }
}
