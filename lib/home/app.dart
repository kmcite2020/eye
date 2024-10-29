import 'package:eye/home/left_sided_bar.dart';
import 'package:eye/main.dart';

class Application extends UI {
  const Application(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = themeMode();
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.visibility, color: isDarkMode ? Colors.lightBlue : Colors.blue),
                const SizedBox(width: 8),
                'EYE | ${currentAppLocation.substring(1)}'.text(
                    textScaleFactor: .7,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.white : Colors.black)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  switch (currentUser.isSignedIn) {
                    true => Icons.account_circle,
                    false => Icons.account_circle_outlined,
                  },
                  size: 16,
                  color: isDarkMode ? Colors.grey[300] : Colors.grey[700],
                ),
                const SizedBox(width: 4),
                switch (currentUser.isSignedIn) {
                  true => currentUser.email,
                  false => 'Un-signed User',
                }
                    .text(
                  textScaleFactor: .8,
                  style: TextStyle(color: isDarkMode ? Colors.grey[300] : Colors.grey[700]),
                ),
              ],
            ),
            Divider(
              height: 8,
              thickness: 1,
              color: isDarkMode ? Colors.lightBlue : Colors.blue,
              endIndent: 50,
              indent: 50,
            ),
          ],
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.white,
      ),
      body: Row(
        children: [
          const LeftSidedBar().pad(all: 4),
          Expanded(child: child),
        ],
      ),
    );
  }
}
