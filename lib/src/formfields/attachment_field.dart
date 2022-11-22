import 'package:flutter/widgets.dart';
import 'package:woue_components/woue_components.dart';

class AttachmentField extends FormField<AttachmentInfo> {
  //final bool selectAllOnFocus;

  /// whether update value when text input is composing
  ///
  /// **on web this will not worked**
  /// https://github.com/flutter/flutter/issues/65357
  ///
  ///
  /// default is false
  //final bool updateValueWhenComposing;

  AttachmentField({
    Key? key,
    AttachmentInfo? initialValue,
    bool enabled = true,
    AutovalidateMode? autovalidateMode,
    void Function(bool?)? onChanged,
    onSaved,
    validator,
  }) : super(
            enabled: enabled,
            autovalidateMode: autovalidateMode,
            onSaved: onSaved,
            validator: validator,
            key: key,
            initialValue: initialValue ?? AttachmentInfo.empty(),
            builder: (state) {
              // final CheckboxFieldState state =
              //     baseState as CheckboxFieldState;

              var tb = AttachmentSelect(
                selected: state.value,
                onChanged: state.didChange,
              );

              // var tb = Checkbox(value: state.value, onChanged: state.didChange);
              if (state.hasError) {
                return Wrap(children: [tb, Text("Error ${state.errorText}")]);
              } else {
                return tb;
              }
            });
}
