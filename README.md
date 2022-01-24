A notebook background which is responsive to the system text size settings.

## Features

- Easy to use
- Customizable line thickness
- Customizable line color
- Customizable background color
- Line- and Grid-Layout
- Possibility to leave blank lines on top of content
- Included LineSizeBuilder to determine the height of default text

## Usage

Depend on it:

```yaml
dependencies:
  responsive_notebook_background: ^0.1.0
```

Import it:

```dart
import 'package:responsive_notebook_background/responsive_notebook_background.dart';
```

Example:

```dart
Stack(
      children: const [
        Positioned.fill(
          child: ResponsiveNotebookBackground(
            options: ResponsiveNotebookBackgroundOptions(),
            child: Text(
                'Lorem ipsum dolor sit amet.'),
          ),
        ),
      ],
    );
```

## Customization options

```dart
 static const TextStyle textStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.blue);

      Stack(
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
                    'Lorem ipsum dolor sit amet.',
                    style: textStyle,
                  ),
                ),
              ),
            ],
          );
```
