import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/src/line_size_builder.dart';
import 'package:responsive_notebook_background/src/notebook.dart';
import 'package:responsive_notebook_background/src/options.dart';

/// A notebook background which is responsive to the system text size settings.
///
/// Add [ResponsiveNotebookBackgroundOptions] to make adjustments.
class ResponsiveNotebookBackground extends StatelessWidget {
  /// Constructor of ResponsiveNotebookBackground
  const ResponsiveNotebookBackground({
    super.key,
    this.child,
    required this.options,
  });

  /// Optional widget which will placed over the notebook background
  final Widget? child;

  /// Options for the [ResponsiveNotebookBackground].
  final ResponsiveNotebookBackgroundOptions options;

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
                isGrid: options.lineType == LineType.grid,
              ),
            ),
            if (child != null)
              Padding(
                padding: EdgeInsets.only(
                  left: options.horizontalPadding,
                  right: options.horizontalPadding,
                  top: options.blankLines * textHeight,
                ),
                child: child,
              ),
          ],
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<ResponsiveNotebookBackgroundOptions>(
        'options',
        options,
      ),
    );
  }
}
