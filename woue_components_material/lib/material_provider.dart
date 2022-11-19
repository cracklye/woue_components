import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;


import 'package:woue_components/woue_components.dart' as w;

class MaterialProvider extends w.WoueProvider {
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
    Object? materialTapTargetSize,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    IconThemeData? iconTheme,
  }) {
    return Chip(
        avatar: avatar,
        label: label,
        labelStyle: labelStyle,
        labelPadding: labelPadding,
        deleteIcon: deleteIcon,
        onDeleted: onDeleted,
        deleteIconColor: deleteIconColor,
        deleteButtonTooltipMessage: deleteButtonTooltipMessage,
        side: side,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        backgroundColor: backgroundColor,
        padding: padding,
        visualDensity:
            visualDensity != null ? visualDensity as VisualDensity : null,
        materialTapTargetSize: materialTapTargetSize != null
            ? materialTapTargetSize as MaterialTapTargetSize
            : null,
        elevation: elevation,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        iconTheme: iconTheme);
  }

  @override
  Widget buildDivider(
      {double? height,
      double? thickness,
      double? indent,
      double? endIndent,
      Color? color}) {
    return Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
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
    Function()? onPressed,
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
    void Function()? onDoubleTap,
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
      onLongPress: onLongPress,
      onTap: onTap,
      //onDoubleTap: onDoubleTap,
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

  @override
  Widget buildCheckbox(
      bool? value,
      bool tristate,
      ValueChanged<bool?>? onChanged,
      MouseCursor? mouseCursor,
      Color? activeColor,
      Color? fillColor,
      Color? checkColor,
      Color? focusColor,
      Color? hoverColor,
      Color? overlayColor,
      double? splashRadius,
      materialTapTargetSize,
      visualDensity,
      FocusNode? focusNode,
      bool autofocus,
      OutlinedBorder? shape,
      BorderSide? side) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      tristate: tristate,
    );
  }

  @override
  Widget buildSelectableText(
      String data,
      FocusNode? focusNode,
      TextStyle? style,
      StrutStyle? strutStyle,
      TextAlign? textAlign,
      TextDirection? textDirection,
      double? textScaleFactor,
      bool? showCursor,
      bool? autofocus,
      ToolbarOptions? toolbarOptions,
      int? minLines,
      int? maxLines,
      double? cursorWidth,
      double? cursorHeight,
      Radius? cursorRadius,
      Color? cursorColor,
      BoxHeightStyle? selectionHeightStyle,
      BoxWidthStyle? selectionWidthStyle,
      DragStartBehavior? dragStartBehavior,
      bool? enableInteractiveSelection,
      TextSelectionControls? selectionControls,
      GestureTapCallback? onTap,
      ScrollPhysics? scrollPhysics,
      String? semanticsLabel,
      TextHeightBehavior? textHeightBehavior,
      TextWidthBasis? textWidthBasis,
      SelectionChangedCallback? onSelectionChanged) {
    return SelectableText(
      data,
      minLines: minLines,
      maxLines: maxLines,
    );
  }

  @override
  Widget buildTextField(
      Key? key,
      TextEditingController? controller,
      FocusNode? focusNode,
      String? placeholder,
      TextInputType? keyboardType,
      TextInputAction? textInputAction,
      textCapitalization,
      TextStyle? style,
      StrutStyle? strutStyle,
      TextAlign? textAlign,
      TextAlignVertical? textAlignVertical,
      TextDirection? textDirection,
      bool? readOnly,
      ToolbarOptions? toolbarOptions,
      bool? showCursor,
      bool? autofocus,
      String? obscuringCharacter,
      bool? obscureText,
      bool? autocorrect,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      bool? enableSuggestions,
      int? maxLines,
      int? minLines,
      bool? expands,
      int? maxLength,
      maxLengthEnforcement,
      ValueChanged<String>? onChanged,
      VoidCallback? onEditingComplete,
      ValueChanged<String>? onSubmitted,
      AppPrivateCommandCallback? onAppPrivateCommand,
      List? inputFormatters,
      bool? enabled,
      double? cursorWidth,
      double? cursorHeight,
      Radius? cursorRadius,
      Color? cursorColor,
      BoxHeightStyle? selectionHeightStyle,
      BoxWidthStyle? selectionWidthStyle,
      Brightness? keyboardAppearance,
      EdgeInsets? scrollPadding,
      DragStartBehavior? dragStartBehavior,
      bool? enableInteractiveSelection,
      TextSelectionControls? selectionControls,
      GestureTapCallback? onTap,
      MouseCursor? mouseCursor,
      buildCounter,
      ScrollController? scrollController,
      ScrollPhysics? scrollPhysics,
      Iterable<String>? autofillHints,
      Clip? clipBehavior,
      String? restorationId,
      bool? scribbleEnabled,
      bool? enableIMEPersonalizedLearning) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      obscuringCharacter: obscuringCharacter ?? '•',
      minLines: minLines,
      maxLines: maxLines,
      expands: expands ?? false,
    );
  }

  @override
  Widget buildToggle(
      bool value,
      ValueChanged<bool>? onChanged,
      Color? activeColor,
      Color? activeTrackColor,
      Color? inactiveThumbColor,
      Color? inactiveTrackColor,
      ImageProvider<Object>? activeThumbImage,
      ImageErrorListener? onActiveThumbImageError,
      ImageProvider<Object>? inactiveThumbImage,
      ImageErrorListener? onInactiveThumbImageError,
      Color? thumbColor,
      Color? trackColor,
      materialTapTargetSize,
      DragStartBehavior dragStartBehavior,
      MouseCursor? mouseCursor,
      Color? focusColor,
      Color? hoverColor,
      Color? overlayColor,
      double? splashRadius,
      FocusNode? focusNode,
      bool autofocus) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      focusColor: focusColor,
      focusNode: focusNode,
      autofocus: autofocus,
      splashRadius: splashRadius,
      mouseCursor: mouseCursor,
      dragStartBehavior: dragStartBehavior,
    );
  }

  @override
  Widget buildContentDialog(Widget? title, Widget? content,
      List<Widget>? actions, style, BoxConstraints? constraints) {
    return AlertDialog(title: title, content: content, actions: actions);
  }

  @override
  Future<dynamic> buildShowDialog({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
  }) {
    return showDialog(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      useSafeArea: useSafeArea,
    );
  }

  @override
  Widget buildTextFormField(
      controller,
      String? initialValue,
      FocusNode? focusNode,
      String? placeholder,
      TextInputType? keyboardType,
      TextStyle? style,
      StrutStyle? strutStyle,
      TextDirection? textDirection,
      TextAlign textAlign,
      TextAlignVertical? textAlignVertical,
      bool autofocus,
      bool readOnly,
      ToolbarOptions? toolbarOptions,
      bool? showCursor,
      String obscuringCharacter,
      bool obscureText,
      bool autocorrect,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      bool enableSuggestions,
      int? maxLines,
      int? minLines,
      bool expands,
      int? maxLength,
      ValueChanged<String>? onChanged,
      GestureTapCallback? onTap,
      VoidCallback? onEditingComplete,
      ValueChanged<String>? onSubmitted,
      onSaved,
      validator,
      bool? enabled,
      double cursorWidth,
      double? cursorHeight,
      Radius? cursorRadius,
      Color? cursorColor,
      EdgeInsets scrollPadding,
      bool? enableInteractiveSelection,
      TextSelectionControls? selectionControls,
      ScrollPhysics? scrollPhysics,
      Iterable<String>? autofillHints,
      AutovalidateMode? autovalidateMode,
      ScrollController? scrollController,
      bool enableIMEPersonalizedLearning,
      MouseCursor? mouseCursor) {
    // TODO: implement buildTextFormField
    throw UnimplementedError();
  }

  @override
  Widget buildDropdownButton<T>(
      Function(T?) onChanged,
      List<w.DropDownItem> items,
      Widget? leading,
      Widget? title,
      Widget? icon,
      double verticalOffset,
      bool closeAfterClick,
      bool disabled,
      FocusNode? focusNode,
      bool autofocus,
      placement,
      ShapeBorder? menuShape,
      Color? menuColor) {
    return DropdownButton<T>(
        icon: icon,
        items: items
            .map((e) => DropdownMenuItem<T>(value: e.value, child: e.content))
            .toList(),
        onChanged: onChanged);
  }

  @override
  Widget buildLinearProgressIndicator(
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
  ) {
    return LinearProgressIndicator(
      backgroundColor: backgroundColor,
      color: color,
      valueColor: valueColor,
      value: value,
      minHeight: minHeight,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }

  @override
  Widget buildCircularProgressIndicator(
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double strokeWidth,
    String? semanticsLabel,
    String? semanticsValue,
  ) {
    return CircularProgressIndicator(
      backgroundColor: backgroundColor,
      color: color,
      value: value,
      valueColor: valueColor,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    );
  }

  @override
  Widget buildCombo<T>(
    T? value,
    List<w.ComboEntry<T>> options,
    Function(T? selected)? onChanged,
    bool disabled,
    Widget? hint,
    Widget? disabledHint,
    void Function()? onTap,
    int elevation,
    TextStyle? style,
    Widget? underline,
    Widget? icon,
    Color? iconDisabledColor,
    Color? iconEnabledColor,
    double iconSize,
    bool isDense,
    bool isExpanded,
    double? itemHeight,
    Color? focusColor,
    FocusNode? focusNode,
    bool autofocus,
    Color? dropdownColor,
    double? menuMaxHeight,
    bool? enableFeedback,
    AlignmentGeometry alignment,
    BorderRadius? borderRadius,
  ) {
    return DropdownButton<T>(
        value: value,
        //icon: const Icon(Icons.arrow_downward),
        disabledHint: disabledHint,
        alignment: alignment,
        elevation: elevation,
        style: style,
        underline: underline,
        icon: icon,
        iconSize: iconSize,
        isExpanded: isExpanded,
        itemHeight: itemHeight,
        dropdownColor: dropdownColor,
        enableFeedback: enableFeedback,
        // alignment: alignment,
        borderRadius: borderRadius,
        isDense: isDense,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        onTap: onTap,
        autofocus: autofocus,
        focusColor: focusColor,
        focusNode: focusNode,
        hint: hint,
        menuMaxHeight: menuMaxHeight,
        onChanged: onChanged,
        items: options
            .map<m.DropdownMenuItem<T>>(
              (e) => m.DropdownMenuItem<T>(
                
                value: e.value,
                child: e.child,
              ),
            )
            .toList());
  }
}
