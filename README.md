# Responsive Notebook Background
[![pub package][pub_badge]][pub_badge_link]
[![package publisher][publisher_badge]][publisher_badge_link]
[![style][style_badge]][style_link]
[![license][license_badge]][license_link]

A notebook background which is responsive to the system text size settings.

## Features

- Easy to use
- Customizable line thickness
- Customizable line color
- Customizable background color
- Line- and Grid-Layout
- Possibility to leave blank lines on top of content
- Included LineSizeBuilder to determine the height of a single line of text

## Usage

Depend on it:

```yaml
dependencies:
  responsive_notebook_background: ^0.1.3
```

Import it:

```dart
import 'package:responsive_notebook_background/responsive_notebook_background.dart';
```

Example:

```dart
const ResponsiveNotebookBackground(
    options: ResponsiveNotebookBackgroundOptions(),
    child: Text('Lorem ipsum dolor sit amet.'),
);
```

## Customization options

```dart
static const TextStyle _textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.brown,
);

const ResponsiveNotebookBackground(
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
      'Lorem ipsum dolor sit amet.',
      style: _textStyle,
    ),
);
```
[publisher_badge]: https://img.shields.io/pub/publisher/responsive_notebook_background.svg

[publisher_badge_link]: https://pub.dev/publishers/cosee.biz/packages

[license_badge]: https://img.shields.io/github/license/cosee/responsive_notebook_background

[license_link]: https://github.com/cosee/responsive_notebook_background/blob/main/LICENSE

[style_badge]: https://img.shields.io/badge/style-cosee__lints-brightgreen

[style_link]: https://pub.dev/packages/cosee_lints

[pub_badge]: https://img.shields.io/pub/v/responsive_notebook_background.svg

[pub_badge_link]: https://pub.dartlang.org/packages/responsive_notebook_background