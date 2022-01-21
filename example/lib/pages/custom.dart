import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleCustom extends StatelessWidget {
  const ExampleCustom({Key? key}) : super(key: key);
  static const TextStyle textStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned.fill(
          child: ResponsiveNotebookBackground(
            options: ResponsiveNotebookBackgroundOptions(
              blankLines: 2,
              horizontalPadding: 20,
              lineWidth: 2.5,
              backgroundColor: Colors.black12,
              lineColor: Colors.red,
              lineType: LineType.line,
              styleForHeightCalculation: textStyle,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
