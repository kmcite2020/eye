import 'package:eye/main.dart';

class SessionsSubspace extends UI {
  final Widget outlet;
  const SessionsSubspace(this.outlet, {super.key});
  @override
  Widget build(BuildContext context) => outlet;
}

class SessionDetailsPage extends UI {
  final Session session;
  const SessionDetailsPage({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Session ID: ${session.id}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Date: ${session.createdOn}'),
            SizedBox(height: 8),
            Text('Duration: ${session.progress}'),
            SizedBox(height: 8),
            Text('Score: ${session.result}'),
            // Add more session details as needed
          ],
        ),
      ),
    );
  }
}
