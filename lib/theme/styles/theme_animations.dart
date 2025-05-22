import 'package:flutter/material.dart';

/// Standardized animations for consistent motion effects
class ThemeAnimations {
  ThemeAnimations._(); // Private constructor

  /// Duration-related constants grouped in a single class
  static final duration = _ThemeDuration();

  /// Animation curves grouped in a single class
  static final curve = _ThemeCurve();

  /// Animation styles for theme transitions
  static final style = _ThemeAnimationStyle();
}

/// Duration-related constants grouped in a single class
class _ThemeDuration {
  final Duration instant = Duration.zero;
  final Duration veryFast = const Duration(milliseconds: 150);
  final Duration fast = const Duration(milliseconds: 250);
  final Duration medium = const Duration(milliseconds: 350);
  final Duration slow = const Duration(milliseconds: 500);
  final Duration verySlow = const Duration(milliseconds: 750);
}

/// Curve-related constants grouped in a single class
class _ThemeCurve {
  final Curve standard = Curves.easeInOut;
  final Curve emphasized = Curves.easeOutCubic;
  final Curve decelerate = Curves.decelerate;
  final Curve accelerate = Curves.ease;
  final Curve sharp = Curves.easeInOutExpo;
}

/// Theme animation styles for MaterialApp
class _ThemeAnimationStyle {
  // Using null to let MaterialApp use its default animation style
  final AnimationStyle? noAnimation = null;
  final AnimationStyle? slideFromLeft = AnimationStyle(
    curve: Curves.easeInOut,
    duration: Duration(milliseconds: 350),
  );
  final AnimationStyle? slideFromRight = AnimationStyle(
    curve: Curves.slowMiddle,
    duration: ThemeAnimations.duration.slow,
  );
}
