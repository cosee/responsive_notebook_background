import 'package:flutter/material.dart';

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

  /// The width of the sidebar.
  final double horizontalPadding;

  /// Placement of the children in the sidebar.
  final double blankLines;

  /// Optional background color for the sidebar.
  final Color backgroundColor;

  /// A [List] of [String] representing the symbols to be shown.
  ///
  /// Strings must be unique.
  final Color lineColor;

  /// Activates symbols without children.
  ///
  /// Enables jumping to the position even if there are no entries present.
  final bool squared;

  /// Activates symbols without children.
  ///
  /// Enables jumping to the position even if there are no entries present.
  final TextStyle? style;

  /// Activates symbols without children.
  ///
  /// Enables jumping to the position even if there are no entries present.
  final double lineWidth;
}
