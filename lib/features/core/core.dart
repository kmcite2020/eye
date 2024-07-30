import 'package:eye/main.dart';
import 'package:uuid/uuid.dart';

extension WidgetExtensions on Widget {
  Padding pad({
    double? all,
    double? right,
    double? left,
    double? top,
    double? bottom,
    double? horizontal,
    double? vertical,
  }) {
    EdgeInsetsGeometry edgeInsets = EdgeInsets.zero;

    if (all != null) {
      edgeInsets = EdgeInsets.all(all);
    } else if (horizontal != null || vertical != null) {
      edgeInsets = EdgeInsets.symmetric(
        vertical: vertical ?? 0.0,
        horizontal: horizontal ?? 0.0,
      );
    } else if (left != null || right != null || top != null || bottom != null) {
      edgeInsets = EdgeInsets.only(
        left: left ?? 0.0,
        right: right ?? 0.0,
        top: top ?? 0.0,
        bottom: bottom ?? 0.0,
      );
    } else {
      edgeInsets = EdgeInsets.all(8);
    }
    return Padding(
      padding: edgeInsets,
      child: this,
    );
  }

  Widget center() {
    return Center(child: this);
  }
}

extension DynamicExtensions on dynamic {
  Text text({double textScaleFactor = 1, TextStyle? style}) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(textScaleFactor),
      style: style,
    );
  }
}

extension InjectedExtension<T> on Injected<T> {
  void set(T? newState) {
    if (newState != null) {
      state = newState;
    }
  }

  T get get => state;
}

String get randomID => Uuid().v8();
