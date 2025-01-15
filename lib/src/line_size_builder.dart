import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// LineSizeBuilder class
///
/// Can be used to align objects according to the text height.
class LineSizeBuilder extends StatelessWidget {
  /// Determines the height of a single line of text
  const LineSizeBuilder.forSingleLine({
    required this.builder,
    super.key,
    this.styleForHeightCalculation,
    this.text,
    this.maxWidth = double.infinity,
  });

  /// Optional text. Required for LineSizeBuilder.forText()
  final String? text;

  /// Custom [TextStyle] to be used when calculating the line height.
  ///
  // ignore: comment_references, ThemeData is included in flutter
  /// If not set, [ThemeDate.primaryTextTheme.bodyText1] will be used.
  final TextStyle? styleForHeightCalculation;

  /// Optional maximal width the text can use.
  /// Required for LineSizeBuilder.forText
  final double maxWidth;

  /// Called to obtain the child widget.
  final Widget Function(BuildContext context, double height) builder;

  @override
  Widget build(BuildContext context) {
    final painter = TextPainter(
      text: TextSpan(
        text: text,
        style: styleForHeightCalculation ??
            Theme.of(context).primaryTextTheme.bodyLarge,
      ),
      textScaler: MediaQuery.of(context).textScaler,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    return builder(context, painter.size.height);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('text', text))
      ..add(
        DiagnosticsProperty<TextStyle?>(
          'styleForHeightCalculation',
          styleForHeightCalculation,
        ),
      )
      ..add(DoubleProperty('maxWidth', maxWidth))
      ..add(
        ObjectFlagProperty<
            Widget Function(BuildContext context, double height)>.has(
          'builder',
          builder,
        ),
      );
  }
}
