import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleLined extends StatelessWidget {
  const ExampleLined({Key? key}) : super(key: key);

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
              options: const ResponsiveNotebookBackgroundOptions(),
              child: Text(
                lorem(paragraphs: 4, words: 400),
              ),
            ),
          ),
        );
      },
    );
  }
}
