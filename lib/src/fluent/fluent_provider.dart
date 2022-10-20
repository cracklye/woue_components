import 'package:fluent_ui/fluent_ui.dart';
import 'package:woue_components/src/widgets/expander.dart';

import 'package:woue_components/src/woue_provider.dart';
//import 'package:woue_components/woue_components.dart';

class FluentProvider extends WoueProvider {
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
    return Button(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
      child: child,
    );
  }

  // @override
  // Widget buildExpandedPanelList(
  //   List<ExpandedListItem> items,
  // ) {
  //   return Text("Not implemented");
  //   // return Column(
  //   //   children: [
  //   //     ...items.map((e) => Expander(header: e.title, content: e.content))
  //   //   ],
  //   // );
  // }

  @override
  Widget buildChip({
    Widget? avatar,
    required Widget label,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    Widget? deleteIcon,
    void Function()? onDeleted,
    Color? deleteIconColor,
    String? deleteButtonTooltipMessage,
    BorderSide? side,
    OutlinedBorder? shape,
    Clip clipBehavior = Clip.none,
    FocusNode? focusNode,
    bool autofocus = false,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    Object? visualDensity,
    materialTapTargetSize,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    IconThemeData? iconTheme,
  }) {
    return Chip(
      text: label,
      onPressed: onDeleted,
      image: avatar,
      semanticLabel: deleteButtonTooltipMessage,
    );
  }

  @override
  Widget buildDivider(
      {double? height,
      double? thickness,
      double? indent,
      double? endIndent,
      Color? color}) {
    return Divider(
      size: height,
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
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
      child: child,
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

  @override
  Widget buildSlider(
    double value,
    void Function(double)? onChanged,
    void Function(double)? onChangeStart,
    void Function(double)? onChangeEnd,
    double min,
    double max,
    int? divisions,
    String? label,
    FocusNode? focusNode,
    bool vertical,
    bool autofocus,
    MouseCursor mouseCursor,
    Color? activeColor,
    Color? inactiveColor,
    Color? thumbColor,
    String Function(double)? semanticFormatterCallback,
  ) {
    return Slider(
      divisions: divisions,
      min: min,
      max: max,
      value: value,
      onChanged: onChanged,
      onChangeEnd: onChangeEnd,
      onChangeStart: onChangeStart,
      label: label,
      focusNode: focusNode,
      vertical: vertical,
      autofocus: autofocus,
      mouseCursor: mouseCursor,
    );
  }

  @override
  Widget buildListTile(
    Key? key,
    Color? tileColor,
    ShapeBorder? shape,
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool isThreeLine,
    EdgeInsetsGeometry? contentPadding,
    Color? selectedColor,
    Color? iconColor,
    Color? textColor,
    bool enabled,
    void Function()? onTap,
    void Function()? onLongPress,
    MouseCursor? mouseCursor,
    bool selected,
    Color? focusColor,
    Color? hoverColor,
    FocusNode? focusNode,
    bool autofocus,
    Color? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
  ) {
    return GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: ListTile(
          key: key,
          // tileColor: tileColor,
          // shape: shape,
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: trailing,
          // isThreeLine: isThreeLine,
          //  contentPadding: contentPadding ?? kDefaultContentPadding,
        ));
  }
//   @override
//   Widget buildCombo<T>(List<T> options) {
//  return Combobox<T>(
//       placeholder: placeholder,
//       isExpanded: true,
//       items: options
//           .map((e) => f.ComboboxItem<T>(
//                 value: e,
//                 child: Text(e.toString()),
//               ))
//           .toList(),
//       value: value,
//       onChanged: onChanged,
//     );
//   }
}
