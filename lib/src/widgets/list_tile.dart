import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class ListTile extends StatelessWidget {
  ListTile({
    Key? key,
    this.tileColor,
    this.shape,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.contentPadding,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.selected = false,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.autofocus = false,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.dense = false,
  }) : super(key: key);

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool isThreeLine;

  final bool? dense;

  final ShapeBorder? shape;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final MouseCursor? mouseCursor;
  final bool selected;
  final Color? focusColor;
  final Color? hoverColor;
  final FocusNode? focusNode;
  final bool autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildListTile(
        key,
        tileColor,
        shape,
        leading,
        title,
        subtitle,
        trailing,
        isThreeLine,
        contentPadding,
        selectedColor,
        iconColor,
        textColor,
        enabled,
        onTap,
        onLongPress,
        mouseCursor,
        selected,
        focusColor,
        hoverColor,
        focusNode,
        autofocus,
        selectedTileColor,
        enableFeedback,
        horizontalTitleGap,
        minVerticalPadding,
        minLeadingWidth);
  }
}
