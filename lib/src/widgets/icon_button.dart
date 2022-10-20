import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class IconButton extends StatelessWidget {
  const IconButton({
    Key? key,
    required this.icon,
     this.onPressed,
    this.onLongPress,
    this.iconSize,
    this.padding,
    this.alignment,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.mouseCursor,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback = false,
    this.constraints,
  }) : super(key:key);
  final Icon icon;
  final Function()? onPressed;
  final Function()? onLongPress;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;
  final double? splashRadius;
  final Color? color;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? disabledColor;
  final MouseCursor? mouseCursor;
  final FocusNode? focusNode;
  final bool autofocus;
  final String? tooltip;
  final bool enableFeedback;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildIconButton(
        icon,
        onPressed,
        onLongPress,
        iconSize,
        padding,
        alignment,
        splashRadius,
        color,
        focusColor,
        hoverColor,
        highlightColor,
        splashColor,
        disabledColor,
        mouseCursor,
        focusNode,
        autofocus,
        tooltip,
        enableFeedback,
        constraints);
  }
}
