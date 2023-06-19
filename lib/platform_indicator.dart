import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract interface class PlatformIndicator {
  Color color();

  Widget activityProgressIndicator();

  factory PlatformIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IOSIndicator();
      default:
        return AndroidIndicator();
    }
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget activityProgressIndicator() => CircularProgressIndicator(
        color: color(),
      );

  @override
  Color color() => Colors.blue;
}

class IOSIndicator implements PlatformIndicator {
  @override
  Widget activityProgressIndicator() => CupertinoActivityIndicator(
        color: color(),
      );

  @override
  Color color() => Colors.red;
}
