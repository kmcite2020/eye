import 'package:eye/main.dart';

class CountdownBar extends StatefulWidget {
  const CountdownBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountdownBarState createState() => _CountdownBarState();
}

class _CountdownBarState extends State<CountdownBar> {
  double progress = 1.0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(
          () {
            if (progress > 0) {
              progress -= 1 / 60; // Decrease progress over 60 seconds
            } else {
              progress = 1;
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: progress * constraints.maxWidth + 0.01,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AlwaysStoppedAnimation(Colors.red).value,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                      Colors.red,
                    ],
                  ),
                ),
              );
            },
          ),
          'Time Remaining: ${(progress * 60).toInt()} seconds'
              .text(
                textScaleFactor: .8,
              )
              .center(),
        ],
      ),
    );
  }
}
