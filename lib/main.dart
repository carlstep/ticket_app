import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  // main() is the entry point to the flutter framework
  // runApp must accept a Widget
  // Widgets can be Stateless or Stateful

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // material app
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BottomNavBar(),
    );
  }
}
