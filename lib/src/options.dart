import 'package:flutter/material.dart';

class ResponsiveNotebookBackgroundOptions {
  const ResponsiveNotebookBackgroundOptions({
    this.horizontalPadding = 0.0,
    this.blankLines = 0,
    this.backgroundColor = Colors.white,
    this.lineType = LineType.line,
    this.lineColor = Colors.grey,
    this.lineWidth = 1.0,
    this.styleForHeightCalculation,
  });

  /// Horizontal space to be left blank.
  final double horizontalPadding;

  /// Blank lines at the beginning.
  final int blankLines;

  /// Background color.
  final Color backgroundColor;

  /// Grid lines color.
  final Color lineColor;

  /// Type of lines.
  ///
  /// Default ist [LineType.line].
  final LineType lineType;

  /// Thickness of the lines.
  final double lineWidth;

  /// Custom [TextStyle] to be used when calculating the line height.
  ///
  /// If not set, [ThemeDate.primaryTextTheme.bodyText1] will be used.
  final TextStyle? styleForHeightCalculation;
}

enum LineType {
  line,
  grid,
}
