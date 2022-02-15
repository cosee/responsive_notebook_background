import 'package:flutter/material.dart';

/// LineSizeBuilder class
///
/// Can be used to align objects according to the text height.
class LineSizeBuilder extends StatelessWidget {
  /// Optional text. Required for LineSizeBuilder.forText()
  final String? text;

  /// Custom [TextStyle] to be used when calculating the line height.
  ///
  /// If not set, [ThemeDate.primaryTextTheme.bodyText1] will be used.
  final TextStyle? styleForHeightCalculation;

  /// Optional maximal width the text can use. Required for LineSizeBuilder.forText
  final double maxWidth;

  /// Called to obtain the child widget.
  final Widget Function(BuildContext context, double height) builder;

  /// Determines the height of a single line of text
  const LineSizeBuilder.forSingleLine({
    Key? key,
    this.styleForHeightCalculation,
    this.text,
    required this.builder,
  })  : maxWidth = double.infinity,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: styleForHeightCalculation ??
            Theme.of(context).primaryTextTheme.bodyText1,
      ),
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    return builder(context, painter.size.height);
  }
}
