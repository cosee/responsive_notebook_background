import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleGrid extends StatelessWidget {
  const ExampleGrid({Key? key}) : super(key: key);

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
            child: LineSizeBuilder.forSingleLine(
              builder: (_, textHeight) => ResponsiveNotebookBackground(
                options: const ResponsiveNotebookBackgroundOptions(
                  lineType: LineType.grid,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: textHeight,
                        top: textHeight * 10,
                      ),
                      child: Container(
                        color: Colors.red,
                        height: textHeight * 8,
                        width: textHeight * 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: textHeight * 7,
                        top: textHeight,
                      ),
                      child: Container(
                        color: Colors.blue,
                        height: textHeight * 6,
                        width: textHeight * 13,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: textHeight * 8,
                        top: textHeight * 22,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        height: textHeight * 10,
                        width: textHeight * 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
