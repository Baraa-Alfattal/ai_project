import 'package:flutter/material.dart';

class Rock extends StatelessWidget {
  final double size;
  final Color color;

  const Rock({
    super.key,
    required this.size,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
    );
  }
}
