import 'package:flutter/material.dart';
import 'package:responsive_notebook_background/responsive_notebook_background.dart';

class ExampleGrid extends StatelessWidget {
  const ExampleGrid({super.key});

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
                      child: SizedBox(
                        height: textHeight * 8,
                        width: textHeight * 10,
                        child: const ColoredBox(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: textHeight * 7,
                        top: textHeight,
                      ),
                      child: SizedBox(
                        height: textHeight * 6,
                        width: textHeight * 13,
                        child: const ColoredBox(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: textHeight * 8,
                        top: textHeight * 22,
                      ),
                      child: SizedBox(
                        height: textHeight * 10,
                        width: textHeight * 10,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          height: textHeight * 10,
                          width: textHeight * 10,
                        ),
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
