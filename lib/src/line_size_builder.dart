import 'package:flutter/material.dart';

class LineSizeBuilder extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final double maxWidth;
  final Widget Function(BuildContext, double height) builder;

  const LineSizeBuilder.forSingleLine({
    Key? key,
    this.style,
    this.text,
    required this.builder,
  })  : maxWidth = double.infinity,
        super(key: key);

  const LineSizeBuilder.forLineCount({
    Key? key,
    this.style,
    required int lineCount,
    required this.builder,
  })  : maxWidth = double.infinity,
        text = ' ${'\n' * (lineCount - 1)}',
        super(key: key);

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
