// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';

// class FormeFluentTextBox extends FormField<String> {
//   final bool selectAllOnFocus;

//   /// whether update value when text input is composing
//   ///
//   /// **on web this will not worked**
//   /// https://github.com/flutter/flutter/issues/65357
//   ///
//   ///
//   /// default is false
//   final bool updateValueWhenComposing;

//   FormeFluentTextBox({
//     String? initialValue,
//     //  required String name,
//     bool readOnly = false,
//     Key? key,
//     BoxDecoration? decoration,
//     int? maxLines = 1,
//     int? order,
//     bool quietlyValidate = false,
//     this.selectAllOnFocus = false,
//     TextInputType? keyboardType,
//     bool autofocus = false,
//     int? minLines,
//     int? maxLength,
//     TextStyle? style,
//     ToolbarOptions? toolbarOptions,
//     TextInputAction? textInputAction,
//     TextCapitalization textCapitalization = TextCapitalization.none,
//     bool obscureText = false,
//     StrutStyle? strutStyle,
//     TextAlign textAlign = TextAlign.start,
//     TextAlignVertical? textAlignVertical,
//     bool? showCursor,
//     String obscuringCharacter = '•',
//     bool autocorrect = true,
//     SmartDashesType? smartDashesType,
//     SmartQuotesType? smartQuotesType,
//     bool enableSuggestions = true,
//     bool expands = false,
//     MaxLengthEnforcement? maxLengthEnforcement,
//     double cursorWidth = 2.0,
//     double? cursorHeight,
//     Radius? cursorRadius,
//     Color? cursorColor,
//     BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
//     BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
//     Brightness? keyboardAppearance,
//     EdgeInsets scrollPadding = const EdgeInsets.all(20),
//     DragStartBehavior dragStartBehavior = DragStartBehavior.start,
//     ScrollPhysics? scrollPhysics,
//     Iterable<String>? autofillHints,
//     bool enableInteractiveSelection = true,
//     bool enabled = true,
//     VoidCallback? onEditingComplete,
//     List<TextInputFormatter>? inputFormatters,
//     GestureTapCallback? onTap,
//     ValueChanged<String>? onSubmitted,
//     ScrollController? scrollController,
//     Duration? asyncValidatorDebounce,
//     AutovalidateMode? autovalidateMode,
//     // FormeFieldStatusChanged<String>? onStatusChanged,
//     // FormeFieldInitialed<String>? onInitialed,
//     // FormeFieldSetter<String>? onSaved,
//     // FormeValidator<String>? validator,
//     // FormeAsyncValidator<String>? asyncValidator,
//     // FormeFieldDecorator<String>? decorator,
//     void Function(String)? onChanged,
//     onSaved,
//     validator,
//     bool registrable = true,
//     this.updateValueWhenComposing = false,
//     // FormeFieldValidationFilter<String>? validationFilter,
//     FocusNode? focusNode,
//  //   EdgeInsetsGeometry padding = kTextBoxPadding,
//     Clip clipBehavior = Clip.antiAlias,
//     String? placeholder,
//     TextStyle? placeholderStyle,
//     String? header,
//     TextStyle? headerStyle,
//     Widget? outsidePrefix,
//     Widget? prefix,
//     // OverlayVisibilityMode prefixMode = OverlayVisibilityMode.always,
//     // OverlayVisibilityMode outsidePrefixMode = OverlayVisibilityMode.always,
//     Widget? outsideSuffix,
//     Widget? suffix,
//     // OverlayVisibilityMode suffixMode = OverlayVisibilityMode.always,
//     // OverlayVisibilityMode outsideSuffixMode = OverlayVisibilityMode.always,
//     BoxDecoration? foregroundDecoration,
//     Color? highlightColor,
//     double? minHeight,
//     ButtonThemeData? iconButtonThemeData,
//   }) : super(
//             // focusNode: focusNode,
//             // validationFilter: validationFilter,
//             enabled: enabled,
//             // registrable: registrable,
//             // decorator: decorator,
//             // order: order,
//             // quietlyValidate: quietlyValidate,
//             // asyncValidatorDebounce: asyncValidatorDebounce,
//             autovalidateMode: autovalidateMode,
//             // onStatusChanged: onStatusChanged,
//             // onInitialed: onInitialed,
//             onSaved: onSaved,
//             validator: validator,
//             // asyncValidator: asyncValidator,
//             key: key,
//             // name: name,
//             // readOnly: readOnly,
//             initialValue: initialValue ?? '',
//             builder: (baseState) {
//               // final bool readOnly = baseState.readOnly;
//               // final bool enabled = baseState.enabled;
//               final FormeFluentTextBoxState state =
//                   baseState as FormeFluentTextBoxState;
//               FocusNode node = FocusNode(
                
//                 onKey: (node, event) {
//                    print("node: $node, event $event");
//                 return KeyEventResult.handled;
//                 },
//                 onKeyEvent: ((node, event) {
//                 print("node: $node, event $event");
//                 return KeyEventResult.handled;
//               }));

//               var tb = TextBox(
                
//                 iconButtonThemeData: iconButtonThemeData,
//                 minHeight: minHeight,
//                 foregroundDecoration: foregroundDecoration,
//                 outsideSuffixMode: outsideSuffixMode,
//                 clipBehavior: clipBehavior,
//                 highlightColor: highlightColor,
//                 header: header,
//                 headerStyle: headerStyle,
//                 suffix: suffix,
//                 suffixMode: suffixMode,
//                 padding: padding,
//                 placeholder: placeholder,
//                 placeholderStyle: placeholderStyle,
//                 prefix: prefix,
//                 prefixMode: prefixMode,
//                 outsidePrefix: outsidePrefix,
//                 outsidePrefixMode: outsidePrefixMode,
//                 outsideSuffix: outsideSuffix,
//                 onChanged: onChanged,
//                 //TODO focusNode: state.focusNode,
//                // focusNode: node,
//                 controller: state.textEditingController,
//                 decoration: decoration,
//                 obscureText: obscureText,
//                 maxLines: maxLines,
//                 minLines: minLines,
//                 enabled: enabled,
//                 readOnly: readOnly,
//                 onTap: onTap,
//                 onEditingComplete: onEditingComplete,
//                 onSubmitted: onSubmitted,
//                 textInputAction: textInputAction,
//                 textCapitalization: textCapitalization,
//                 style: style,
//                 strutStyle: strutStyle,
//                 textAlign: textAlign,
//                 textAlignVertical: textAlignVertical,
//                 showCursor: showCursor,
//                 obscuringCharacter: obscuringCharacter,
//                 autocorrect: autocorrect,
//                 smartDashesType: smartDashesType,
//                 smartQuotesType: smartQuotesType,
//                 enableSuggestions: enableSuggestions,
//                 expands: expands,
//                 cursorWidth: cursorWidth,
//                 cursorHeight: cursorHeight,
//                 cursorRadius: cursorRadius,
//                 cursorColor: cursorColor,
//                 selectionHeightStyle: selectionHeightStyle,
//                 selectionWidthStyle: selectionWidthStyle,
//                 keyboardAppearance: keyboardAppearance,
//                 scrollPadding: scrollPadding,
//                 dragStartBehavior: dragStartBehavior,
//                 scrollPhysics: scrollPhysics,
//                 autofillHints: readOnly ? null : autofillHints,
//                 autofocus: autofocus,
//                 toolbarOptions: toolbarOptions,
//                 enableInteractiveSelection: enableInteractiveSelection,
//                 maxLengthEnforcement: updateValueWhenComposing
//                     ? maxLengthEnforcement
//                     : MaxLengthEnforcement.truncateAfterCompositionEnds,
//                 inputFormatters: inputFormatters,
//                 keyboardType: keyboardType,
//                 maxLength: maxLength,
//                 scrollController: scrollController,
//               );
//               if (state.hasError) {
//                 return Wrap(children: [tb, Text("Error ${state.errorText}")]);
//               } else {
//                 return tb;
//               }
//             });

//   @override
//   FormeFluentTextBoxState createState() => FormeFluentTextBoxState();
// }

// class FormeFluentTextBoxState extends FormFieldState<String> {
//   late final TextEditingController textEditingController;

//   @override
//   FormeFluentTextBox get widget => super.widget as FormeFluentTextBox;

//   @override
//   void initState() {
//     super.initState();
//     textEditingController = TextEditingController(text: widget.initialValue);
//     textEditingController.addListener(_handleControllerChanged);
//   }

//   @override
//   void dispose() {
//     textEditingController.dispose();
//     super.dispose();
//   }

//   void _handleControllerChanged() {
//     if (textEditingController.text != value &&
//         (widget.updateValueWhenComposing ||
//             !textEditingController.value.isComposingRangeValid)) {
//       didChange(textEditingController.text);
//     }
//   }

//   // TextSelection _selection(int start, int end) {
//   //   final int extendsOffset = end;
//   //   final int baseOffset = start < 0
//   //       ? 0
//   //       : start > extendsOffset
//   //           ? extendsOffset
//   //           : start;
//   //   return TextSelection(baseOffset: baseOffset, extentOffset: extendsOffset);
//   // }
// }
