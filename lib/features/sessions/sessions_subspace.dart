import 'package:eye/main.dart';

class SessionsSubspace extends UI {
  final Widget outlet;
  const SessionsSubspace(this.outlet, {super.key});
  @override
  Widget build(BuildContext context) {
    return outlet;
  }
}

class SessionDetailsPage extends UI {
  final Session session;
  const SessionDetailsPage({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return session.text();
  }
}
