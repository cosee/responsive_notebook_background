import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/src/line_size_builder.dart';
import 'package:responsive_notebook_background/src/notebook.dart';
import 'package:responsive_notebook_background/src/options.dart';

/// A notebook background which is responsive to the system text size settings.
///
/// Add [ResponsiveNotebookBackgroundOptions] to make adjustments.
class ResponsiveNotebookBackground extends StatelessWidget {
  /// Optional widget which will placed over the notebook background
  final Widget? child;
  final ResponsiveNotebookBackgroundOptions options;

  const ResponsiveNotebookBackground({
    Key? key,
    this.child,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineSizeBuilder.forSingleLine(
        styleForHeightCalculation: options.styleForHeightCalculation,
        builder: (_, textHeight) {
          return Stack(
            children: [
              Positioned.fill(
                child: Notebook(
                  lineColor: options.lineColor,
                  backgroundColor: options.backgroundColor,
                  lineWidth: options.lineWidth,
                  style: options.styleForHeightCalculation,
                  needsSquare: options.lineType == LineType.grid,
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
