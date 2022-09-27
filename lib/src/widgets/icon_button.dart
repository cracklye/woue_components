import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class IconButton extends StatelessWidget {
  IconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
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
  }) : super();
  Icon icon;
  Function() onPressed;
  Function()? onLongPress;
  double? iconSize;
  EdgeInsetsGeometry? padding;

  AlignmentGeometry? alignment;
  double? splashRadius;
  Color? color;
  Color? focusColor;
  Color? hoverColor;
  Color? highlightColor;
  Color? splashColor;
  Color? disabledColor;
  MouseCursor? mouseCursor;
  FocusNode? focusNode;
  bool autofocus;
  String? tooltip;
  bool enableFeedback;
  BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return DesignProvider.provider.buildIconButton(
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
