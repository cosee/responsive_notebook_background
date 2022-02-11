import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/src/line_size_builder.dart';

class Notebook extends StatelessWidget {
  final TextStyle? style;
  final bool needsSquare;
  final Color lineColor;
  final Color backgroundColor;
  final double lineWidth;

  const Notebook({
    Key? key,
    this.style,
    required this.lineColor,
    required this.lineWidth,
    required this.backgroundColor,
    required this.needsSquare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineSizeBuilder.forSingleLine(
      styleForHeightCalculation: style,
      builder: (_, textHeight) => Container(
        color: backgroundColor,
        child: CustomPaint(
          painter: _NotebookPainter(
            lineWidth: lineWidth,
            textHeight: textHeight,
            context: context,
            lineColor: lineColor,
            needsSquare: needsSquare,
          ),
        ),
      ),
    );
  }
}

class _NotebookPainter extends CustomPainter {
  final double textHeight;
  final bool needsSquare;
  final double lineWidth;
  final Color lineColor;

  final BuildContext context;

  const _NotebookPainter({
    required this.textHeight,
    required this.lineWidth,
    required this.needsSquare,
    required this.lineColor,
    required this.context,
  });

  Paint _createLinePaint() => Paint()
    ..color = lineColor
    ..strokeWidth = lineWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = _createLinePaint();
    _createCommonNotebook(size, canvas, linePaint);
  }

  void _createCommonNotebook(Size size, Canvas canvas, Paint linePaint) {
    for (double yPosition = textHeight;
        yPosition < size.height;
        yPosition += textHeight) {
      canvas.drawLine(
        Offset(0, yPosition),
        Offset(size.width, yPosition),
        linePaint,
      );
    }
    if (needsSquare) {
      for (double xPosition = 0;
          xPosition < size.width;
          xPosition += textHeight) {
        canvas.drawLine(
          Offset(xPosition, 0),
          Offset(xPosition, size.height),
          linePaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is! _NotebookPainter) {
      return true;
    }
    return textHeight != oldDelegate.textHeight;
  }
}
