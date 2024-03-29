import 'package:flutter/material.dart';
import 'plugins/desktop/desktop.dart';

import 'ui/home/screen.dart';

void main() {
  setTargetPlatformForDesktop();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
