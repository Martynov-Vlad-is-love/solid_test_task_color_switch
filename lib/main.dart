import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test_task_color_switch/controller/color_controller.dart';
import 'package:solid_test_task_color_switch/pages/color_switch_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ColorController())],
      child: const ColorSwitchPage(),
    ),
  );
}
