import 'package:class_test/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screens/gridview_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewScreen(
        name: 'puja',
      ),
    );
  }
}
