import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleCustom extends StatelessWidget {
  const ExampleCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned.fill(
          child: ResponsiveNotebookBackground(
            options: ResponsiveNotebookBackgroundOptions(
              blankLines: 1,
              horizontalPadding: 20,
              lineWidth: 1.5,
              backgroundColor: Colors.black12,
              lineColor: Colors.red,
              squared: false,
            ),
            child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'),
          ),
        ),
      ],
    );
  }
}
