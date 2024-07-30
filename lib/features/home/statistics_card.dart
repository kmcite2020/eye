import 'package:eye/features/navigator.dart';
import 'package:eye/main.dart';

class StatisticsCard extends UI {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'Statistics Card'.text().pad(),
        ElevatedButton(
          child: 'Create New Session'.text(),
          onPressed: () {
            navigator.to(Routes.session());
          },
        ),
      ],
    );
  }
}
