import '../main.dart';
import 'sessions_card.dart';
import 'statistics_card.dart';

class Welcome extends UI {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = themeMode();
    return Column(
      children: [
        Card(
          elevation: 10,
          color: isDarkMode ? Colors.grey[800] : Colors.white,
          child: ListTile(
            leading: Icon(Icons.person, color: isDarkMode ? Colors.white : Colors.black),
            title: Text(
              'Welcome User',
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            ),
          ).pad(),
        ).pad(),
        Card(
          color: isDarkMode ? Colors.grey[700] : Colors.grey[200],
          child: ListTile(
            leading: Icon(Icons.email, color: isDarkMode ? Colors.white70 : Colors.black54),
            title: Text(
              currentUser.email,
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            ),
          ).pad(),
        ).pad(),
        StatisticsCard(),
        SessionsCard(),
      ],
    );
  }
}
