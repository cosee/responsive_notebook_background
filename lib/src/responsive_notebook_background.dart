import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/src/line_size_builder.dart';
import 'package:responsive_notebook_background/src/notebook.dart';
import 'package:responsive_notebook_background/src/options.dart';

class ResponsiveNotebookBackground extends StatelessWidget {
  final Widget? child;

  final ResponsiveNotebookBackgroundOptions options;

  const ResponsiveNotebookBackground({
    Key? key,
    this.child,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineSizeBuilder.forSingleLine(builder: (_, textHeight) {
      return Stack(
        children: [
          Positioned.fill(
            child: Notebook(
              blankLines: options.blankLines * textHeight,
              lineColor: options.lineColor,
              backgroundColor: options.backgroundColor,
              lineWidth: options.lineWidth,
              style: options.style,
              needsSquare: options.squared,
            ),
          ),
          if (child != null)
            Padding(
              padding: EdgeInsets.only(
                  left: options.horizontalPadding,
                  right: options.horizontalPadding,
                  top: options.blankLines * textHeight),
              child: child!,
            ),
        ],
      );
    });
  }
}
