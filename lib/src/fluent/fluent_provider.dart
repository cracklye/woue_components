import 'package:fluent_ui/fluent_ui.dart';
import 'package:woue_components/src/woue_provider.dart';

class FluentProvider extends WoueProvider {
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
    return Button(
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
    return Button(
      key: key,
      child: child,
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
    );
  }

  @override
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
      icon: icon, onPressed: onPressed, onLongPress: onLongPress,
      autofocus: autofocus, focusNode: focusNode,
      //TODO Compute from size iconButtonMode: IconBu,
      iconButtonMode: iconSize == null
          ? null
          : (iconSize < 17
              ? IconButtonMode.tiny
              : iconSize < 33
                  ? IconButtonMode.small
                  : IconButtonMode.large),
    );
  }
}
