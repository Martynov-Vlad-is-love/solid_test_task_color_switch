import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test_task_color_switch/controller/color_controller.dart';

/// This page displace color.
class ColorSwitchPage extends StatelessWidget {
  /// Constructor.
  const ColorSwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorController = context.watch<ColorController>();
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Test task')),
        body: SizedBox.expand(
          child: GestureDetector(
            onTap: colorController.generateNewColor,
            child: AnimatedContainer(
              width: size.width,
              height: size.width,
              color: colorController.getCurrentColor(),
              duration: const Duration(seconds: 1),
              child: const Center(
                child: Text('Hey there', style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
