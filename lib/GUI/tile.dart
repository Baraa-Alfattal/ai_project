import 'package:ai_project/GUI/rock.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Color color, rockColor;
  final double size;
  final int left, top, rockNum;

  const Tile({
    super.key,
    this.color = Colors.indigo,
    required this.size,
    required this.left,
    required this.top,
    this.rockNum = 0,
    this.rockColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    const borderWidth = 1.0;
    const borderColor = Colors.black;

    final actualCount = rockNum > 4 ? 4 : rockNum.abs();
    const pad = 5.0;
    const space = 3.0;
    final rockSize = (size - 2 * pad - 2 * space) / 2;

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
        padding: const EdgeInsets.all(pad),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 3,
            runSpacing: 3,
            children: List.filled(
              actualCount,
              Rock(size: rockSize, color: rockColor),
            ),
          ),
        ),
      ),
    );
  }
}
