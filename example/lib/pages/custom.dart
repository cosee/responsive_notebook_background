import 'package:flutter/material.dart';
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
            child: const ResponsiveNotebookBackground(
              options: ResponsiveNotebookBackgroundOptions(
                blankLines: 2,
                horizontalPadding: 20,
                lineWidth: 2.5,
                backgroundColor: Colors.black12,
                lineColor: Colors.blueAccent,
                lineType: LineType.line,
                styleForHeightCalculation: _textStyle,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                style: _textStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}
