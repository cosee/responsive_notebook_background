import 'package:flutter/material.dart';

/// LineSizeBuilder class
///
/// Can be used to align objects according to the text height
class LineSizeBuilder extends StatelessWidget {
  /// Optional text. Required for LineSizeBuilder.forText()
  final String? text;
  /// Optional style.
  final TextStyle? style;
  /// Optional maximal width the text can use. Required for LineSizeBuilder.forText
  final double maxWidth;
  final Widget Function(BuildContext, double height) builder;

  /// Determines the height of a single line of text
  const LineSizeBuilder.forSingleLine({
    Key? key,
    this.style,
    this.text,
    required this.builder,
  })  : maxWidth = double.infinity,
        super(key: key);

  /// Determines the height of multiple lines of text
  const LineSizeBuilder.forLineCount({
    Key? key,
    this.style,
    required int lineCount,
    required this.builder,
  })  : maxWidth = double.infinity,
        text = ' ${'\n' * (lineCount - 1)}',
        super(key: key);

  /// Determines the height of a given text.
  const LineSizeBuilder.forText({
    Key? key,
    this.style,
    required this.maxWidth,
    required this.text,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: style ?? Theme.of(context).primaryTextTheme.bodyText1,
      ),
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    );
    painter.layout(maxWidth: maxWidth);
    final Size size = painter.size;
    return builder(context, size.height);
  }
}
