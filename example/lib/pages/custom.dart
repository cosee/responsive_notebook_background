import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleCustom extends StatelessWidget {
  const ExampleCustom({super.key});

  static final TextStyle _textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.blue.shade900,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          primary: false,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: ResponsiveNotebookBackground(
              options: ResponsiveNotebookBackgroundOptions(
                blankLines: 2,
                horizontalPadding: 20,
                lineWidth: 2.5,
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .secondary
                    .withValues(alpha: 0.4),
                lineColor: Theme.of(context).colorScheme.secondary,
                styleForHeightCalculation: _textStyle,
              ),
              child: Text(
                lorem(paragraphs: 4, words: 400),
                style: _textStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}
