import 'package:eye/main.dart';

class Button extends UI {
  final Widget child;
  final ButtonType type;
  final void Function()? onTap;
  const Button({
    super.key,
    this.onTap,
    this.type = ButtonType.ok,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: type.colors,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.withOpacity(.5),
          minimumSize: Size.fromHeight(50),
        ),
        child: child,
      ),
    );
  }
}

enum ButtonType {
  danger(
    [Colors.deepOrange, Colors.deepOrange],
  ),
  ok(
    [Colors.green, Colors.green],
  );

  const ButtonType([this.colors = const []]);
  final List<MaterialColor> colors;
}
