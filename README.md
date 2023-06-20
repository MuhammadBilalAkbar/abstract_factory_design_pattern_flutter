# abstract_factory_design_pattern_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1. Research: Abstract Factory Design Pattern Flutter

- Keywords:
    - abstract factory design pattern flutter
    - abstract factory design pattern flutter example
    - dart abstract factory constructor
    - design patterns in dart
    - dart abstract class constructor
    - flutter design patterns
    - design patterns in flutter
    - dart abstract class factory
    - dart factory method
    - dart abstract class with implementation
- Video Title: Abstract Factory Design Pattern in Flutter | Creational Design Patterns in Flutter |
  Abstract Factory Design Pattern in Flutter with Example

## 2. Research: Competitors

**Flutter Videos/Articles**

- 3.7K: https://youtu.be/eEg1CBKuqFg?list=PLlzmAWV2yTgB-1LdoO-9vCTgrE-1dyWKP
- 482K: https://youtu.be/xbjAsdAK4xQ
- 280K: https://www.youtube.com/watch?v=v-GiuMmsXj4
- https://medium.com/flutter-community/flutter-design-patterns-11-abstract-factory-7098112925d8
- https://scottt2.github.io/design-patterns-in-dart/abstract_factory/
- https://kazlauskas.dev/flutter-design-patterns-11-abstract-factory/
- https://medium.com/@omershafique/flutter-design-patterns-3-abstract-factory-method-63ccb031bad3
- https://segmentfault.com/a/1190000041513524/en
- https://github.com/scottt2/design-patterns-in-dart

**Android/Swift/React Videos**

- 7.3K: https://youtu.be/hJgubQLTjZU
- 30K: https://youtu.be/QNpwWkdFvgQ
- 42K: https://youtu.be/KC5tCjHFLsU
- 8.8K: https://youtu.be/MhyuXGMnkfA
- 12K: https://youtu.be/5hXZnI86E2Y
- 1.5K: https://youtu.be/hRE3TbpS5sE
- 1.7K: https://youtu.be/jNUsW_hNa2U
- 4.1K: https://youtu.be/EZ5iqtjXGBE
- 1.7K: https://youtu.be/jNUsW_hNa2U
- 18K: https://youtu.be/JdZGvsxblF0
- 1.5K: https://youtu.be/hRE3TbpS5sE
- https://github.com/scottt2/design-patterns-in-dart
- https://www.digitalocean.com/community/tutorials/abstract-factory-design-pattern-in-java
- https://www.javatpoint.com/abstract-factory-pattern
- https://refactoring.guru/design-patterns/abstract-factory/java/example
- https://www.geeksforgeeks.org/abstract-factory-pattern/
- https://www.baeldung.com/java-abstract-factory-pattern
- https://refactoring.guru/design-patterns/abstract-factory/swift/example
- https://medium.com/@iamcrypticcoder/abstract-factory-pattern-in-swift-4-83abb273c977
- https://medium.com/@SahilSatralkar_18053/abstract-factory-design-pattern-in-swift-e606a7e487b2
- https://theswiftdev.com/swift-abstract-factory-design-pattern/
- https://betterprogramming.pub/factory-method-and-abstract-factory-in-swift-and-ios-universe-47c716667287
- https://subscription.packtpub.com/book/application-development/9781785887611/1/ch01lvl1sec11/the-abstract-factory-pattern
- https://agostini.tech/2017/11/26/design-patterns-in-swift-abstract-factory/
- https://medium.com/mop-developers/factory-pattern-in-react-native-without-using-switch-df99bca31a55

**Great Features**

- The Abstract Factory pattern encapsulates the creation of related objects within a single factory
  interface.
- The pattern defines a common interface (the abstract factory) that clients can use to create
  families of related objects.
- Adding a new variation or family of objects is relatively easy with the Abstract Factory pattern.
- The Abstract Factory pattern promotes a modular and organized code structure.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/75308916/abstract-factory-design-pattern-in-software-design-architecture
- https://stackoverflow.com/questions/46630943/abstract-factory-pattern-unused-code
- https://stackoverflow.com/questions/55175393/abstract-factory-design-pattern-for-the-scenario-themefactory
- https://stackoverflow.com/questions/38504837/abstract-factory-pattern-explanation

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. Abstract Factory design pattern provides a flexible and encapsulated approach to object creation.
   You will learn about how to create new objects using abstract factory design pattern in this
   video.
2. Main points:
    - platform button
    - platform indicator
    - platform slider
    - abstract factory
3. It enables the creation of families of related objects, supports runtime configuration and
   extensibility, and promotes loose coupling and code modularity.

**The Structured Main Content**

# Abstract Factory Design Pattern

## Definition

Provide an interface for creating families of related or dependent objects without specifying their
concrete classes.

Abstract Factory is a creational design pattern, also known as Kit is more flexible and suits the
structure of big projects better than the Factory Method design pattern.

The main purpose of the Abstract Factory design pattern is to encapsulate creating a family of
objects in a separate factory object, hence abstracting the process of object creation.

## Analysis

- Abstract Factory — declares an interface of operations that create abstract Product objects.
- Concrete Factory — implements the operations to create Concrete Product objects. **Each Concrete
  Factory corresponds only to a single variant of products.**
- Product — declares an interface for a type of Product object.
- Concrete Product — implements the Product interface and defines a product object to be created by
  the corresponding Concrete Factory.
- Client — uses only interfaces declared by the Abstract Factory and Product classes.

The usage of the Abstract Factory design pattern should be considered when a system’s code needs to
work with various families of related objects (products), but it should not depend on the concrete
classes of those products, or on how they are created, composed and represented.

## Implementation

1. In `platform_indicator.dart` contains abstract class PlatformIndicator with its factory
   constructor.

Factory constructor uses switch cases statement to call AndroidIndicator and IOSIndicator.

It has `activityProgressIndicator()` and `color()` methods which will be called where it is
implemented.

AndroidIndicator is returning `CircularProgressIndicator` and IOSIndicator is
returning `CupertinoActivityIndicator` and `color()` method is used inside them.

As they are implementing `PlatformIndicator` class so they will override color and
activityProgressIndicator methods.

```dart
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
  Widget activityProgressIndicator() =>
      CircularProgressIndicator(
        color: color(),
      );

  @override
  Color color() => Colors.blue;
}

class IOSIndicator implements PlatformIndicator {
  @override
  Widget activityProgressIndicator() =>
      CupertinoActivityIndicator(
        color: color(),
      );

  @override
  Color color() => Colors.red;
}
```

2. In `platform_button.dart` contains abstract class PlatformButton with its factory constructor.

   Factory constructor uses switch cases statement to call AndroidButton and IOSButton.

   It has `buildButton(VoidCallback onPressed, Widget child)` method which will be called where it
   is implemented.

   AndroidButton is returning `ElevatedButton` and IOSButton is returning `CupertinoButton.filled`.

   As they are implementing `PlatformButton` class so they will override buildButton
   method. `onPressed` and `child` will be provided on client side(in UI i.e., HomePage).

```dart
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
  Widget buildButton(VoidCallback onPressed, Widget child) =>
      ElevatedButton(
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
```

3. `platform_slider.dart` contains abstract class PlatformSlider with its factory constructor.

   Factory constructor uses switch cases statement to call AndroidSlider and IOSSlider.

   It has `buildSlider(double value, ValueSetter<double> onChanged)` method which will be called
   where it is implemented.

   AndroidSlider is returning `Slider` and IOSSlider is returning `CupertinoSlider`.

   As they are implementing `PlatformSlider` class so they will override buildSlider
   method. `value` and `onChanged` will be provided on client side(in UI i.e., HomePage).

```dart
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
  Widget buildSlider(double value, ValueSetter<double> onChanged) =>
      Slider(
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
```

4. `abstract_factory.dart` is an abstract class and has three methods to override where it is
   implemented.
    - buildButton(BuildContext context, String text, VoidCallback onPressed),
    - Widget buildIndicator(BuildContext context), and
    - buildSlider(BuildContext context, double value, ValueSetter<double> onChanged)

   Another class named `AbstractFactoryImplementation` is created, it
   implements `AbstractFactory` and overrides the buildButton, buildIndicator and buildSlider
   methods.

```dart
import 'package:abstract_factory_design_pattern_flutter/platform_button.dart';
import 'package:abstract_factory_design_pattern_flutter/platform_indicator.dart';
import 'package:abstract_factory_design_pattern_flutter/platform_slider.dart';
import 'package:flutter/material.dart';

abstract interface class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);

  Widget buildIndicator(BuildContext context);

  Widget buildSlider(BuildContext context, double value, ValueSetter<double> onChanged);
}

class AbstractFactoryImplementation implements AbstractFactory {
  @override
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed) =>
      PlatformButton(Theme
          .of(context)
          .platform).buildButton(
        onPressed,
        Text(text),
      );

  @override
  Widget buildIndicator(BuildContext context) =>
      PlatformIndicator(Theme
          .of(context)
          .platform).activityProgressIndicator();

  @override
  Widget buildSlider(BuildContext context, double value, ValueSetter<double> onChanged) =>
      PlatformSlider(Theme
          .of(context)
          .platform).buildSlider(
        value,
        onChanged,
      );
}
```

5. `home_page.dart` is client side code for abstract factory design pattern method. Its column
   inside the body contains the following code:

```dart 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbstractFactoryImplementation()
                .buildButton(context, 'Hello', () {}),
            const SizedBox(height: 10),
            AbstractFactoryImplementation().buildIndicator(context),
            AbstractFactoryImplementation().buildSlider(
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
```

button, slider and indicator all are called here through the abstract factory class which is factory
of factories(platform_button, platform_indicator, platform_slider).
