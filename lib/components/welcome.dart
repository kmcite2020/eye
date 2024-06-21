import '../main.dart';

class Welcome extends UI {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: 'Welcome User'.text().pad(),
    );
  }
}
