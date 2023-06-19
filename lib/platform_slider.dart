import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract interface class PlatformSlider {
  Widget buildSlider(double value, ValueSetter<double> onChanged);

  factory PlatformSlider(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidSlider();
      case TargetPlatform.iOS:
        return IOSSlider();
      default:
        return AndroidSlider();
    }
  }
}

class AndroidSlider implements PlatformSlider {
  @override
  Widget buildSlider(double value, ValueSetter<double> onChanged) => Slider(
        value: value,
        onChanged: onChanged,
        max: 100,
        divisions: 10,
      );
}

class IOSSlider implements PlatformSlider {
  @override
  Widget buildSlider(double value, ValueSetter<double> onChanged) =>
      CupertinoSlider(
        value: value,
        onChanged: onChanged,
        max: 100,
        divisions: 10,
      );
}
