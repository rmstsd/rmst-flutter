import 'package:flutter/widgets.dart';

abstract final class Colors {
  /// Completely invisible.
  static const Color transparent = Color(0x00000000);

  /// Completely opaque black.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [black87], [black54], [black45], [black38], [black26], [black12], which
  ///    are variants on this color but with different opacities.
  ///  * [white], a solid white color.
  ///  * [transparent], a fully-transparent color.
  static const Color black = Color(0xFF000000);

  /// Black with 87% opacity.
  ///
  /// This is a good contrasting color for text in light themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [Typography.black], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [black], [black54], [black45], [black38], [black26], [black12], which
  ///    are variants on this color but with different opacities.
  static const Color black87 = Color(0xDD000000);

  /// Black with 54% opacity.
  ///
  /// This is a color commonly used for headings in light themes. It's also used
  /// as the mask color behind dialogs.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [Typography.black], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [black], [black87], [black45], [black38], [black26], [black12], which
  ///    are variants on this color but with different opacities.
  static const Color black54 = Color(0x8A000000);

  /// Black with 45% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [black], [black87], [black54], [black38], [black26], [black12], which
  ///    are variants on this color but with different opacities.
  static const Color black45 = Color(0x73000000);

  /// Black with 38% opacity.
  ///
  /// For light themes, i.e. when the Theme's [ThemeData.brightness] is
  /// [Brightness.light], this color is used for disabled icons and for
  /// placeholder text in [DataTable].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [black], [black87], [black54], [black45], [black26], [black12], which
  ///    are variants on this color but with different opacities.
  static const Color black38 = Color(0x61000000);

  /// Black with 26% opacity.
  ///
  /// Used for disabled radio buttons and the text of disabled flat buttons in light themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// See also:
  ///
  ///  * [ThemeData.disabledColor], which uses this color by default in light themes.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [black], [black87], [black54], [black45], [black38], [black12], which
  ///    are variants on this color but with different opacities.
  static const Color black26 = Color(0x42000000);

  /// Black with 12% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Used for the background of disabled raised buttons in light themes.
  ///
  /// See also:
  ///
  ///  * [black], [black87], [black54], [black45], [black38], [black26], which
  ///    are variants on this color but with different opacities.
  static const Color black12 = Color(0x1F000000);

  /// Completely opaque white.
  ///
  /// This is a good contrasting color for the [ThemeData.primaryColor] in the
  /// dark theme. See [ThemeData.brightness].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [Typography.white], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white70], [white60], [white54], [white38], [white30], [white12],
  ///    [white10], which are variants on this color but with different
  ///    opacities.
  ///  * [black], a solid black color.
  ///  * [transparent], a fully-transparent color.
  static const Color white = Color(0xFFFFFFFF);

  /// White with 70% opacity.
  ///
  /// This is a color commonly used for headings in dark themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [Typography.white], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white], [white60], [white54], [white38], [white30], [white12],
  ///    [white10], which are variants on this color but with different
  ///    opacities.
  static const Color white70 = Color(0xB3FFFFFF);

  /// White with 60% opacity.
  ///
  /// Used for medium-emphasis text and hint text when [ThemeData.brightness] is
  /// set to [Brightness.dark].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [ExpandIcon], which uses this color for dark themes.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white], [white54], [white30], [white38], [white12], [white10], which
  ///    are variants on this color but with different opacities.
  static const Color white60 = Color(0x99FFFFFF);

  /// White with 54% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white], [white60], [white38], [white30], [white12], [white10], which
  ///    are variants on this color but with different opacities.
  static const Color white54 = Color(0x8AFFFFFF);

  /// White with 38% opacity.
  ///
  /// Used for disabled radio buttons and the text of disabled flat buttons in dark themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [ThemeData.disabledColor], which uses this color by default in dark themes.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white], [white60], [white54], [white70], [white30], [white12],
  ///    [white10], which are variants on this color but with different
  ///    opacities.
  static const Color white38 = Color(0x62FFFFFF);

  /// White with 30% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white], [white60], [white54], [white70], [white38], [white12],
  ///    [white10], which are variants on this color but with different
  ///    opacities.
  static const Color white30 = Color(0x4DFFFFFF);

  /// White with 24% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Used for the splash color for filled buttons.
  ///
  /// See also:
  ///
  ///  * [white], [white60], [white54], [white70], [white38], [white30],
  ///    [white10], which are variants on this color
  ///    but with different opacities.
  static const Color white24 = Color(0x3DFFFFFF);

  /// White with 12% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Used for the background of disabled raised buttons in dark themes.
  ///
  /// See also:
  ///
  ///  * [white], [white60], [white54], [white70], [white38], [white30],
  ///    [white10], which are variants on this color but with different
  ///    opacities.
  static const Color white12 = Color(0x1FFFFFFF);

  /// White with 10% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// See also:
  ///
  ///  * [white], [white60], [white54], [white70], [white38], [white30],
  ///    [white12], which are variants on this color
  ///    but with different opacities.
  ///  * [transparent], a fully-transparent color, not far from this one.
  static const Color white10 = Color(0x1AFFFFFF);

  /// The red primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.red[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// See also:
  ///
  ///  * [redAccent], the corresponding accent colors.
  //
}
