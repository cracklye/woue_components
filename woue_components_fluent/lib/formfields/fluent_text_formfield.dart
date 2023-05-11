import 'dart:ui';
import 'dart:ui' as ui;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:loggy/loggy.dart';

class FluentFormField extends FormField<String> with UiLoggy{
  FluentFormField(
      {Key? key,
      TextEditingController? controller,
      FocusNode? focusNode,
      EdgeInsetsGeometry padding = kTextBoxPadding,
      Clip clipBehavior = Clip.antiAlias,
      String? placeholder,
      TextStyle? placeholderStyle,
      Widget? prefix,
      Widget? outsidePrefix,
      OverlayVisibilityMode prefixMode = OverlayVisibilityMode.always,
      OverlayVisibilityMode outsidePrefixMode = OverlayVisibilityMode.always,
      Widget? suffix,
      Widget? outsideSuffix,
      OverlayVisibilityMode suffixMode = OverlayVisibilityMode.always,
      OverlayVisibilityMode outsideSuffixMode = OverlayVisibilityMode.always,
      TextInputType? keyboardType,
      TextInputAction? textInputAction,
      TextStyle? style,
      StrutStyle? strutStyle,
      TextAlign textAlign = TextAlign.start,
      TextAlignVertical? textAlignVertical,
      bool readOnly = false,
      ToolbarOptions? toolbarOptions,
      bool? showCursor,
      bool autofocus = false,
      String obscuringCharacter = '•',
      bool obscureText = false,
      bool autocorrect = true,
      SmartDashesType? smartDashesType,
      SmartQuotesType? smartQuotesType,
      bool enableSuggestions = true,
      int? maxLines = 1,
      int? minLines,
      double? minHeight,
      bool expands = false,
      int? maxLength,
      MaxLengthEnforcement? maxLengthEnforcement,
      void Function(String)? onChanged,
      void Function()? onEditingComplete,
      void Function(String)? onSubmitted,
      List<TextInputFormatter>? inputFormatters,
      bool? enabled,
      double cursorWidth = 1.5,
      double? cursorHeight,
      Radius cursorRadius = const Radius.circular(2.0),
      Color? cursorColor,
      BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
      BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
      Brightness? keyboardAppearance,
      EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool enableInteractiveSelection = true,
      void Function()? onTap,
      ScrollController? scrollController,
      ScrollPhysics? scrollPhysics,
      Iterable<String>? autofillHints,
      String? restorationId,
      TextCapitalization textCapitalization = TextCapitalization.none,
      String? header,
      TextStyle? headerStyle,
      ButtonThemeData? iconButtonThemeData,
      BoxDecoration? decoration,
      BoxDecoration? foregroundDecoration,
      Color? highlightColor,
      GlobalKey<State<StatefulWidget>>? clearGlobalKey,
      FormFieldSetter<String>? onSaved,
      FormFieldValidator<String>? validator,
      String initialValue = "",
      bool autovalidate = false})
      : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            // autovalidate: autovalidate,
            builder: (FormFieldState<String> state) {
              TextEditingController controller =
                  TextEditingController(text: initialValue);
              void onChangedHandler(String value) {
                state.didChange(value);
                if (onChanged != null) {
                  onChanged(value);
                }
              }

              //_controller.text= state.value??"";
              updateTextController(controller, state.value ?? "");

              var toRtn = TextBox(
                
                key: key,
                controller: controller,
                autocorrect: autocorrect,
                autofillHints: autofillHints,
                autofocus: autofocus,
                //clearGlobalKey: clearGlobalKey,
                clipBehavior: clipBehavior,
                cursorColor: cursorColor,
                cursorHeight: cursorHeight,
                cursorRadius: cursorRadius,
                cursorWidth: cursorWidth,
                decoration: decoration,
                dragStartBehavior: dragStartBehavior,
                enableInteractiveSelection: enableInteractiveSelection,
                enableSuggestions: enableSuggestions,
                enabled: enabled,
                expands: expands,
                focusNode: focusNode,
                foregroundDecoration: foregroundDecoration,
                
                highlightColor: highlightColor,
                
                inputFormatters: inputFormatters,
                keyboardAppearance: keyboardAppearance,
                keyboardType: keyboardType,
                maxLength: maxLength,
                maxLengthEnforcement: maxLengthEnforcement,
                maxLines: maxLines,
                
                minLines: minLines,
                obscureText: obscureText,
                obscuringCharacter: obscuringCharacter,
                onChanged: onChangedHandler,
                onEditingComplete: onEditingComplete,
                onSubmitted: onSubmitted,
                onTap: onTap,
                // outsidePrefix: outsidePrefix,
                // outsidePrefixMode: outsidePrefixMode,
                // outsideSuffix: outsideSuffix,
                // outsideSuffixMode: outsideSuffixMode,
                padding: padding,
                placeholder: placeholder,
                placeholderStyle: placeholderStyle,
                prefix: prefix,
                prefixMode: prefixMode,
                readOnly: readOnly,
                restorationId: restorationId,
                scrollController: scrollController,
                scrollPadding: scrollPadding,
                scrollPhysics: scrollPhysics,
                selectionHeightStyle: selectionHeightStyle,
                selectionWidthStyle: selectionWidthStyle,
                showCursor: showCursor,
                smartDashesType: smartDashesType,
                smartQuotesType: smartQuotesType,
                strutStyle: strutStyle,
                style: style,
                suffix: suffix,
                suffixMode: suffixMode,
                textAlign: textAlign,
                textAlignVertical: textAlignVertical,
                textCapitalization: textCapitalization,
                textInputAction: textInputAction,
                //toolbarOptions: toolbarOptions,
              );

              if (state.hasError) {
                return Wrap(
                    children: [toRtn, Text("Error ${state.errorText}")]);
              } else {
                return toRtn;
              }
            });

  static void updateTextController(
    TextEditingController txtController,
    dynamic newValue,
  ) {
    int offset = txtController.value.selection.extentOffset;
    logDebug(
        'Offset : $offset \nnew value: $newValue \nSelection= ${txtController.value.selection} \n Value:${txtController.value}');

    txtController.value = TextEditingValue(
      text: newValue ?? "",
      selection: TextSelection.fromPosition(
        TextPosition(offset: offset),
      ),
    );
  }
}
