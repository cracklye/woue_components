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
      onPressed: onPressed,
      onLongPress: onLongPress,
      focusNode: focusNode,
      autofocus: autofocus,
      child: child,
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
      onFocusChange: onFocusChange,
      onHover: onHover,
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
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      semanticFormatterCallback: semanticFormatterCallback,
      thumbColor: thumbColor,
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
    return ListTile(
      key: key,
      tileColor: tileColor,
      shape: shape,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      isThreeLine: isThreeLine,
      contentPadding: contentPadding,
    );
  }
  // @override
  // Widget buildCombo<T>(List<T> options, T? value,
  // Key? key,
  // required List<DropdownMenuItem<T>>? items,
  // List<Widget> Function(BuildContext)? selectedItemBuilder,
  // T? value,
  // Widget? hint,
  // Widget? disabledHint,
  // required void Function(T?)? onChanged,
  // void Function()? onTap,
  // int elevation = 8,
  // TextStyle? style,
  // Widget? underline,
  // Widget? icon,
  // Color? iconDisabledColor,
  // Color? iconEnabledColor,
  // double iconSize = 24.0,
  // bool isDense = false,
  // bool isExpanded = false,
  // double? itemHeight = kMinInteractiveDimension,
  // Color? focusColor,
  // FocusNode? focusNode,
  // bool autofocus = false,
  // Color? dropdownColor,
  // double? menuMaxHeight,
  // bool? enableFeedback,
  // AlignmentGeometry alignment = AlignmentDirectional.centerStart,
  // BorderRadius? borderRadius,
  // ) {
  //   return DropdownButton<T>(
  //       value: value,
  //       //icon: const Icon(Icons.arrow_downward),
  //       elevation: 16,
  //       onChanged: onChanged,
  //       items: options.map<m.DropdownMenuItem<T>>((T value) {
  //         return m.DropdownMenuItem<T>(
  //           value: value,
  //           child: Text(value.toString()),
  //         );
  //       }).toList());
  // }
}
