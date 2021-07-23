import 'package:flutter/material.dart';

import './presentation/screens/menu_screen.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger King',
      theme: ThemeData.dark(),
      home: MenuScreen(),
    );
  }
}