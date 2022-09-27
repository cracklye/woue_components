import 'package:flutter/material.dart';
import 'package:woue_components/src/woue_provider.dart';

class MaterialProvider extends WoueProvider {
  const MaterialProvider();

  @override
  Widget buildElevatedButton(
    Key? key,
    Widget child,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Function(bool)? onFocusChange,
    Function(bool)? onHover,
    FocusNode? focusNode,
    bool autofocus,
  ) {
    return ElevatedButton(
      onFocusChange: onFocusChange,
      onHover: onHover,
      key: key,
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
    );
  }

  @override
  Widget buildTextButton(
    Key? key,
    Widget child,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    Function(bool)? onFocusChange,
    Function(bool)? onHover,
    FocusNode? focusNode,
    bool autofocus,
  ) {
    return TextButton(
      key: key,
      child: child,
      onFocusChange: onFocusChange,
      onHover: onHover,
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
    );
  }

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
  ) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: iconSize,
      padding: padding ?? const EdgeInsets.all(8.0),
      alignment: alignment ?? Alignment.center,
      splashRadius: splashRadius,
      color: color,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      disabledColor: disabledColor,
      mouseCursor: mouseCursor,
      focusNode: focusNode,
      autofocus: autofocus,
      tooltip: tooltip,
      enableFeedback: enableFeedback,
      constraints: constraints,
    );
  }
}
