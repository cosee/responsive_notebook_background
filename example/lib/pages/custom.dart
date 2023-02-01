import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleCustom extends StatelessWidget {
  const ExampleCustom({Key? key}) : super(key: key);

  static const TextStyle _textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.brown,
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
              options: const ResponsiveNotebookBackgroundOptions(
                blankLines: 2,
                horizontalPadding: 20,
                lineWidth: 2.5,
                backgroundColor: Colors.black12,
                lineColor: Colors.blueAccent,
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
