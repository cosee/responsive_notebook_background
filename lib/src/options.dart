import 'package:flutter/material.dart';

/// Options class.
///
/// Contains all options for the ResponsiveNotebookBackground.
class ResponsiveNotebookBackgroundOptions {
  const ResponsiveNotebookBackgroundOptions({
    this.horizontalPadding = 0.0,
    this.blankLines = 0.0,
    this.backgroundColor = Colors.white,
    this.squared = false,
    this.lineColor = Colors.grey,
    this.lineWidth = 1.0,
    this.style,
  });

  /// Horizontal padding of the child.
  final double horizontalPadding;

  /// Amount of lines, which should be left blank on top of the child.
  final double blankLines;

  /// Optional background color.
  final Color backgroundColor;

  /// The color of the lines
  final Color lineColor;

  /// Enables squared design
  final bool squared;

  /// Optional TextStyle that the notebook.dart class can use to draw the lines
  final TextStyle? style;

  /// The width of the lines.
  final double lineWidth;
}
