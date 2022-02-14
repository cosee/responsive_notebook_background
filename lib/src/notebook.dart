import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/src/line_size_builder.dart';

/// A notebook.
///
/// Either displaying single lines or grids.
class Notebook extends StatelessWidget {
  /// Custom [TextStyle] to be used for the [LineSizeBuilder].
  ///
  /// If not set, [ThemeDate.primaryTextTheme.bodyText1] will be used.
  final TextStyle? style;

  /// If the [_NotebookPainter] should draw grids instead of single lines.
  final bool isGrid;

  /// Line color.
  final Color lineColor;

  /// Background color.
  final Color backgroundColor;

  /// Thickness of the lines.
  final double lineWidth;

  const Notebook({
    Key? key,
    this.style,
    required this.lineColor,
    required this.lineWidth,
    required this.backgroundColor,
    required this.isGrid,
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
            lineColor: lineColor,
            isGrid: isGrid,
          ),
        ),
      ),
    );
  }
}

/// Painter for the [Notebook].
/// Paints grids or single lines depending on [isGrid].
class _NotebookPainter extends CustomPainter {
  /// The space between each line
  final double textHeight;

  /// If the painter should draw grids instead of single lines
  final bool isGrid;

  /// Thickness of the lines.
  final double lineWidth;

  /// Line color.
  final Color lineColor;

  const _NotebookPainter({
    required this.textHeight,
    required this.lineWidth,
    required this.isGrid,
    required this.lineColor,
  });

  Paint get _linePaint => Paint()
    ..color = lineColor
    ..strokeWidth = lineWidth;

  @override
  void paint(Canvas canvas, Size size) =>
      _createCommonNotebook(size, canvas, _linePaint);

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

    if (isGrid) {
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
    return oldDelegate is! _NotebookPainter ||
        textHeight != oldDelegate.textHeight;
  }
}
