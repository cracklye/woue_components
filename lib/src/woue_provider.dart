import 'package:flutter/widgets.dart';

abstract class WoueProvider {
  const WoueProvider();

  Widget buildElevatedButton(
    Key? key,
    Widget child,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Function(bool)? onFocusChange,
    Function(bool)? onHover,
    FocusNode? focusNode,
    bool autofocus,
  );
  Widget buildTextButton(
    Key? key,
    Widget child,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Function(bool)? onFocusChange,
    Function(bool)? onHover,
    FocusNode? focusNode,
    bool autofocus,
  );

  Widget buildIconButton(
    Icon icon,
    Function() onPressed,
    Function()? onLongPress,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    AlignmentGeometry? alignment,
    double? splashRadius,
    Color? color,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    MouseCursor? mouseCursor,
    FocusNode? focusNode,
    bool autofocus,
    String? tooltip,
    bool enableFeedback,
    BoxConstraints? constraints,
  );
}
