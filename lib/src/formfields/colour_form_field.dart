import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:woue_components/woue_components.dart';

class ColourFormField extends FormField<int?> {
  ColourFormField({
    Key? key,
    int? initialValue,
    bool enabled = true,
    required IconData iconSelect,
    required IconData iconDelete,
    AutovalidateMode? autovalidateMode,
    void Function(int?)? onChanged,
    onSaved,
    validator,
  }) : super(
            enabled: enabled,
            autovalidateMode: autovalidateMode,
            onSaved: onSaved,
            validator: validator,
            key: key,
            initialValue: initialValue,
            builder: (state) {
              // final CheckboxFieldState state =
              //     baseState as CheckboxFieldState;
              var tb = ColourButton(
                  iconSelect: iconSelect,
                  iconDelete: iconDelete,
                  color: initialValue != null ? Color(initialValue) : null,
                  onChange: ((p0) =>
                      state.didChange(p0 != null ? p0.value : null)));

              // var tb = Checkbox(checked: state.value, onChanged: state.didChange);
              if (state.hasError) {
                return Wrap(children: [tb, Text("Error ${state.errorText}")]);
              } else {
                return tb;
              }
            });
}

class ColourButton extends StatefulWidget {
  final void Function(Color?) onChange;
  final Color? color;

  final IconData iconSelect;
  final IconData iconDelete;
  const ColourButton(
      {super.key,
      required this.iconDelete,
      required this.iconSelect,
      required this.onChange,
      this.color});

  @override
  State<ColourButton> createState() => _ColourButtonState();
}

class _ColourButtonState extends State<ColourButton> {
  Color? _color;

  @override
  void initState() {
    _color = widget.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _color == null
            ? const Text("No Colour")
            : SizedBox(
                width: 20,
                child: Container(
                  color: _color,
                  child: const Text('  '),
                )),
        IconButton(
          icon: Icon(widget.iconSelect),
          onPressed: () => _doShowDialog(context),
        ),
        IconButton(
          icon: Icon(widget.iconDelete),
          onPressed: () => _clearValue(),
        ),
      ],
    );
  }

  void _clearValue() {
    setState(() {
      _color = null;
    });
  }

  _doShowDialog(BuildContext context) async {
// raise the [showDialog] widget
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return ContentDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: _color ?? const Color(0xFFFF0000),
              onColorChanged: ((value) => setState(() {
                    _color = value;
                  })),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('No Colour'),
              onPressed: () {
                // setState(() => currentColor = pickerColor);
                widget.onChange(_color);
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Select'),
              onPressed: () {
                // setState(() => currentColor = pickerColor);
                widget.onChange(_color);
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

// class CheckboxFieldState extends FormFieldState<bool> {
  

//   @override
//   CheckboxField get widget => super.widget as CheckboxField;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
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
