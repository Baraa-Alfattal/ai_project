import 'package:flutter/material.dart';
import 'GUI/board.dart';

import 'Models/Seashell.dart';

void main() {
  Seashell seashell = Seashell();
  var result = seashell.throwRandomSeashells();
  print(result);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Board()),
    );
  }
}
