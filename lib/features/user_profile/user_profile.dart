import 'package:eye/main.dart';

class UserProfile extends UI {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'UserName'.text(),
        'Email'.text(),
        'Subscription Details'.text(),
        'DangerZone'.text(),
        Card.filled(
          child: Column(
            children: [
              '''
THESE ACTIONS ARE IRREVERSIBLE.
'''
                  .text(
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              ElevatedButton(
                onPressed: switch (sessionsBloc.sessionsRM.get) {
                  const (Sessions()) => null,
                  Sessions() => () {
                      sessionsBloc.clear();
                    },
                },
                child: 'DELETE PROGRESS'.text(),
              ),
            ],
          ).pad(),
        ),
      ],
    );
  }
}
