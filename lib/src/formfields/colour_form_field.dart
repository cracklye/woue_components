import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:loggy/loggy.dart';
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
              var tb = ColourButton(
                  iconSelect: iconSelect,
                  iconDelete: iconDelete,
                  color: initialValue != null ? Color(initialValue) : null,
                  onChange: ((p0) => state.didChange(p0?.value)));
              if (state.hasError) {
                return Wrap(children: [tb, Text("Error ${state.errorText}")]);
              } else {
                return tb;
              }
            });
}

class ColourButton extends StatefulWidget with UiLoggy {
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

class _ColourButtonState extends State<ColourButton> with UiLoggy {
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
        GestureDetector(
          onTap: () => _doShowDialog(context),
          onDoubleTap: () => _doShowDialog(context),
          onLongPress: () => _clearValue(),
          child: _color == null
              ? const Text("No Colour")
              : SizedBox(
                  width: 20,
                  height: 20,
                  child: Container(
                    color: _color,
                    child: const Text('  '),
                  )),
        )
      ],
    );
  }

  void _clearValue() {
    setState(() {
      _color = null;
    });
  }

  _doShowDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return ContentDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: SizedBox(
                height: 300,
                width: 400,
                child: ColourPicker(
                  pickerColor: _color ?? const Color(0xFFFF0000),
                  onColorChanged: ((value) => setState(() {
                        loggy.debug("on changed $_color => $value");
                        _color = value;
                      })),
                )),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('No Colour'),
              onPressed: () {
                widget.onChange(_color);
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Select'),
              onPressed: () {
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

class ColourDropdownButton extends StatefulWidget {
  const ColourDropdownButton(
      {super.key,
      this.enableErase = false,
      this.enableNull = false,
      this.initialValue,
      required this.onChanged});
  final bool enableNull;
  final bool enableErase;
  final Function(Color? colour) onChanged;
  final Color? initialValue;
  @override
  State<ColourDropdownButton> createState() => _ColourDropdownButtonState();
}

class _ColourDropdownButtonState extends State<ColourDropdownButton> {
  late Color? _color;

  @override
  void initState() {
    _color = widget.initialValue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropDownButton<Color?>(
        onPressed: (p0) => print('onpress'),
        title: SizedBox(
          height: 10,
          width: 30,
          child: Container(color: _color ?? const Color(0x00000000)),
        ),
        items: [
          DropDownItem<Color?>(
              value: _color,
              content: SizedBox(
                  width: 300,
                  height: 200,
                  child: ColourPicker(onColorChanged: ((color) {
                    widget.onChanged(color);
                    setState(() {
                      _color = color;
                    });
                  })))),
        ]);
  }
}

class ColourPicker extends StatefulWidget {
  final Color? pickerColor;
  final Function(Color? color)? onColorChanged;

  const ColourPicker({super.key, this.pickerColor, this.onColorChanged});

  @override
  State<ColourPicker> createState() => _ColourPickerState();
}

class _ColourPickerState extends State<ColourPicker> with UiLoggy {
  Color? _color;
  final TextEditingController _hex = TextEditingController();
  @override
  void initState() {
    _color = widget.pickerColor;
    if (widget.pickerColor != null) {
      _hex.text = colorToHex(widget.pickerColor!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   width: 400,
        //   height: 200,

        // ),
        const Expanded(child: Text("Colour picker")),
        _selectedColor(),
        _buildHexText(context),
        _buildHistorySwatch(context),
        _buildSetSwatch(context)
      ],
    );
  }

  Widget _selectedColor() {
    return SizedBox(height: 10, child: Container(color: _color));
  }

  Widget _buildHexText(BuildContext context) {
    return TextField(
      controller: _hex,
      onChanged: (value) {
        try {
          if (value.length > 5) {
            loggy.debug("Changed text value = $value");
            var c = colorFromHex(value);
            loggy.debug("Colour = $c");
            if (c != null) {
              _updateColour(c);
            }
          }
        } catch (e) {
          loggy.debug("Invalid hex value $value");
        }
      },
    );
  }

  Widget _buildHistorySwatch(BuildContext context) {
    return Row(
      children: [
        _buildColourSwatchEntry(context, const Color(0xFFFFFFFF)),
        _buildColourSwatchEntry(context, const Color(0xFF00FFFF)),
        _buildColourSwatchEntry(context, const Color(0xFFFF00FF)),
        _buildColourSwatchEntry(context, const Color(0xFFFFFF00)),
        _buildColourSwatchEntry(context, const Color(0xFF000000)),
        _buildColourSwatchEntry(context, const Color(0xFF00FF00)),
        _buildColourSwatchEntry(context, const Color(0xFF0000FF)),
        _buildColourSwatchEntry(context, const Color(0xFFAAAAAA)),
        _buildColourSwatchEntry(context, const Color(0xFFAA00AA)),
        _buildColourSwatchEntry(context, const Color(0xFFAAAA00)),
        _buildColourSwatchEntry(context, const Color(0xFF777777)),
        _buildColourSwatchEntry(context, const Color(0xFFDDDDDD)),
      ],
    );
  }

  Widget _buildSetSwatch(BuildContext context) {
    return Row(
      children: [
        _buildColourSwatchEntry(context, const Color(0xFFFFFFFF)),
        _buildColourSwatchEntry(context, const Color(0xFF00FFFF)),
        _buildColourSwatchEntry(context, const Color(0xFFFF00FF)),
        _buildColourSwatchEntry(context, const Color(0xFFFFFF00)),
        _buildColourSwatchEntry(context, const Color(0xFF000000)),
        _buildColourSwatchEntry(context, const Color(0xFF00FF00)),
        _buildColourSwatchEntry(context, const Color(0xFF0000FF)),
        _buildColourSwatchEntry(context, const Color(0xFFAAAAAA)),
        _buildColourSwatchEntry(context, const Color(0xFFAA00AA)),
        _buildColourSwatchEntry(context, const Color(0xFFAAAA00)),
        _buildColourSwatchEntry(context, const Color(0xFF777777)),
        _buildColourSwatchEntry(context, const Color(0xFFDDDDDD)),
      ],
    );
  }

  _updateColour(Color color) {
    setState(() {
      _color = color;
    });
    //_hex.text = colorToHex(color);

    _hex.value = TextEditingValue(
      text: colorToHex(color),
      selection: TextSelection.fromPosition(
        TextPosition(offset: colorToHex(color).length),
      ),
    );

    loggy.debug("Color to hex=${colorToHex(color)}");
    if (widget.onColorChanged != null) {
      widget.onColorChanged!(color);
    }
  }

  Widget _buildColourSwatchEntry(BuildContext context, Color color) {
    return Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            border: Border.all(
                color: color == _color
                    ? const Color(0xFF000000)
                    : const Color(0x00000000))),
        child: GestureDetector(
          onTap: () => _updateColour(color),
          child: SizedBox(
            width: 20,
            height: 20,
            child: Container(color: color),
          ),
        ));
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
