import 'dart:math';

import 'package:flutter/material.dart';

/// Controller for color generation
class ColorController extends ChangeNotifier {
  Color _currentColor = Colors.white;
  static const int _maxColorValue = 256;

  /// Return current
  Color getCurrentColor() {
    return _currentColor;
  }

  /// Create random int from range.
  int _randomInt(int max) {
    return Random().nextInt(max);
  }

  /// Generate new color
  void generateNewColor() {
    _currentColor = Color.fromRGBO(
      _randomInt(_maxColorValue),
      _randomInt(_maxColorValue),
      _randomInt(_maxColorValue),
      1,
    );
    notifyListeners();
  }
}
