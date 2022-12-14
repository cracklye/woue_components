import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/widgets/attachment_select.dart';
import 'package:woue_components/src/widgets/combo.dart';
import 'package:woue_components/src/widgets/dropdown_button.dart';

abstract class WoueProvider {
  const WoueProvider();
  Widget buildDivider(
      {double? height,
      double? thickness,
      double? indent,
      double? endIndent,
      Color? color});

  // Widget buildExpandedPanelList(List<ExpandedListItem> items,
  //     ) ;

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
  });

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
  );

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
  );

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
  );

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
      bool? enableIMEPersonalizedLearning);

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
      SelectionChangedCallback? onSelectionChanged);

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
      BorderSide? side);

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
      bool autofocus);

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
  });

  Widget buildContentDialog(Widget? title, Widget? content,
      List<Widget>? actions, style, BoxConstraints? constraints);

  Widget buildTextFormField(
    controller,
    String? initialValue,
    FocusNode? focusNode,
    String? placeholder,
    TextInputType? keyboardType,
    // TextCapitalization textCapitalization = TextCapitalization.none,
    // TextInputAction? textInputAction,
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
    // MaxLengthEnforcement? maxLengthEnforcement,
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
    // List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    // Brightness? keyboardAppearance,
    EdgeInsets scrollPadding,
    bool? enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    // InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    // super.restorationId,
    bool enableIMEPersonalizedLearning,
    MouseCursor? mouseCursor,
  );

  Widget buildDropdownButton<T>(
      Function(T?) onChanged,
      List<DropDownItem> items,
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
      Color? menuColor);

  Widget buildCombo<T>(
      T? value,
      List<ComboEntry<T>> options,
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
      BorderRadius? borderRadius);

  Widget buildLinearProgressIndicator(
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
  );

  Widget buildCircularProgressIndicator(
    double? value,
    Color? backgroundColor,
    Color? color,
    Animation<Color?>? valueColor,
    double strokeWidth,
    String? semanticsLabel,
    String? semanticsValue,
  );

  Widget attachmentSelect(AttachmentInfo? selected, List<String>? extensions,
      Function(AttachmentInfo? infos)? onChanged, bool multiSelect);
}
