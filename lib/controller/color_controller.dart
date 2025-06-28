import 'dart:math';

import 'package:flutter/material.dart';

/// Controller for color generation.
class ColorController extends ChangeNotifier {
  Color _currentColor = Colors.white;

  /// Max color value. It should be in range from 0 to 256.
  static const int _maxColorValue = 256;
  static const double _opacity = 1.0;

  /// Return current color.
  Color getCurrentColor() {
    return _currentColor;
  }

  /// Create random int from range.
  int _getRandomInt(int max) {
    return Random().nextInt(max);
  }

  /// Generate new color.
  void generateNewColor() {
    _currentColor = Color.fromRGBO(
      _getRandomInt(_maxColorValue),
      _getRandomInt(_maxColorValue),
      _getRandomInt(_maxColorValue),
      _opacity,
    );
    notifyListeners();
  }
}
