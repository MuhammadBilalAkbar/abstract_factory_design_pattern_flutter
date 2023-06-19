import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract interface class PlatformButton {
  Widget buildButton(VoidCallback onPressed, Widget child);

  factory PlatformButton(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return IOSButton();
      default:
        return AndroidButton();
    }
  }
}

class AndroidButton implements PlatformButton {
  @override
  Widget buildButton(VoidCallback onPressed, Widget child) => ElevatedButton(
        onPressed: onPressed,
        child: child,
      );
}

class IOSButton implements PlatformButton {
  @override
  Widget buildButton(VoidCallback onPressed, Widget child) =>
      CupertinoButton.filled(
        onPressed: onPressed,
        child: child,
      );
}
