import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Color color;
  final double size;
  final int left, top;

  const Tile({
    super.key,
    this.color = Colors.indigo,
    required this.size,
    required this.left,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    const borderWidth = 1.0;
    const borderColor = Colors.black;

    return Positioned(
      top: top * size,
      left: left * size,
      child: Container(
        width: size - borderWidth,
        height: size - borderWidth,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
