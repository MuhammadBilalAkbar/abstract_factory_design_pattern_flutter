import 'package:abstract_factory_design_pattern_flutter/platform_button.dart';
import 'package:abstract_factory_design_pattern_flutter/platform_indicator.dart';
import 'package:abstract_factory_design_pattern_flutter/platform_slider.dart';
import 'package:flutter/material.dart';

abstract interface class UserInterfaceFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);

  Widget buildIndicator(BuildContext context);

  Widget buildSlider(
      BuildContext context, double value, ValueSetter<double> onChanged);
}

class UserInterface implements UserInterfaceFactory {
  @override
  Widget buildButton(
          BuildContext context, String text, VoidCallback onPressed) =>
      PlatformButton(Theme.of(context).platform).buildButton(
        onPressed,
        Text(text),
      );

  @override
  Widget buildIndicator(BuildContext context) =>
      PlatformIndicator(Theme.of(context).platform).activityProgressIndicator();

  @override
  Widget buildSlider(
          BuildContext context, double value, ValueSetter<double> onChanged) =>
      PlatformSlider(Theme.of(context).platform).buildSlider(
        value,
        onChanged,
      );
}
