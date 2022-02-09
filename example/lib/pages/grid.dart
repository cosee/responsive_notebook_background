import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleSquared extends StatelessWidget {
  const ExampleSquared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        primary: false,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
            minWidth: constraints.maxWidth,
          ),
          child: LineSizeBuilder.forSingleLine(
            builder: (_, textHeight) => Stack(
              children: [
                ResponsiveNotebookBackground(
                  options: const ResponsiveNotebookBackgroundOptions(
                    lineType: LineType.grid,
                  ),
                  child: Stack(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: textHeight * 1, top: textHeight * 10),
                      child: Container(
                        color: Colors.red,
                        height: textHeight * 8,
                        width: textHeight * 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: textHeight * 3, top: textHeight),
                      child: Container(
                        color: Colors.blue,
                        height: textHeight * 6,
                        width: textHeight * 13,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
