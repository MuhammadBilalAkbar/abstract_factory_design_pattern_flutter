import 'package:abstract_factory_design_pattern_flutter/user_interface_factory.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserInterface()
                .buildButton(context, 'Hello', () {}),
            const SizedBox(height: 10),
            UserInterface().buildIndicator(context),
            UserInterface().buildSlider(
              context,
              currentSliderValue,
              (newValue) {
                setState(() {
                  currentSliderValue = newValue;
                  debugPrint(newValue.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
