import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as m;
import 'package:woue_components/src/design_framework.dart';

class TextFormField extends StatelessWidget {
  const TextFormField({
    super.key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.placeholder,
    this.keyboardType,
    // TextCapitalization textCapitalization = TextCapitalization.none,
    // TextInputAction? textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    // MaxLengthEnforcement? maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onSubmitted,
    this.onSaved,
    this.validator,
    // List<TextInputFormatter>? inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    // Brightness? keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    // InputCounterWidgetBuilder? buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.scrollController,
    // super.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
  });
  final controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final String? placeholder;
  final TextInputType? keyboardType;
  // TextCapitalization textCapitalization = TextCapitalization.none,
  // TextInputAction? textInputAction,
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  // MaxLengthEnforcement? maxLengthEnforcement,
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final onSaved;
  final validator;
  // List<TextInputFormatter>? inputFormatters,
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  // Brightness? keyboardAppearance,
  final EdgeInsets scrollPadding;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  // InputCounterWidgetBuilder? buildCounter,
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final ScrollController? scrollController;
  // super.restorationId,
  final bool enableIMEPersonalizedLearning;
  final MouseCursor? mouseCursor;

  @override
  Widget build(BuildContext context) {
    return 
    Woue.provider.buildTextFormField(
      controller,
      initialValue,
      focusNode,
      placeholder,
      keyboardType,
      // TextCapitalization textCapitalization = TextCapitalization.none,
      // TextInputAction? textInputAction,
      style,
      strutStyle,
      textDirection,
      textAlign,
      textAlignVertical,
      autofocus,
      readOnly,
      toolbarOptions,
      showCursor,
      obscuringCharacter,
      obscureText,
      autocorrect,
      smartDashesType,
      smartQuotesType,
      enableSuggestions,
      // MaxLengthEnforcement? maxLengthEnforcement,
      maxLines,
      minLines,
      expands,
      maxLength,
      onChanged,
      onTap,
      onEditingComplete,
      onSubmitted,
      onSaved,
      validator,
      // List<TextInputFormatter>? inputFormatters,
      enabled,
      cursorWidth,
      cursorHeight,
      cursorRadius,
      cursorColor,
      // Brightness? keyboardAppearance,
      scrollPadding,
      enableInteractiveSelection,
      selectionControls,
      // InputCounterWidgetBuilder? buildCounter,
      scrollPhysics,
      autofillHints,
      autovalidateMode,
      scrollController,
      // super.restorationId,
      enableIMEPersonalizedLearning,
      mouseCursor,
    );
  }
}
