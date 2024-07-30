import 'package:eye/features/home/app.dart';

import '../../main.dart';
import 'sessions_card.dart';
import 'statistics_card.dart';

class Welcome extends UI {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          child: 'Welcome User'.text().pad(),
        ).pad(),
        Card(
          child: applicationBloc.email.text().pad(),
        ).pad(),
        StatisticsCard(),
        SessionsCard(),
      ],
    );
  }
}
