import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
    required this.value,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min = 0.0,
    this.max = 100.0,
    this.divisions,
    this.label,
    this.focusNode,
    this.vertical = false,
    this.autofocus = false,
    this.mouseCursor = MouseCursor.defer,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.semanticFormatterCallback,
  }) : super(key:key);
  final double value;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeStart;
  final void Function(double)? onChangeEnd;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final FocusNode? focusNode;
  final bool vertical;
  final bool autofocus;
  final MouseCursor mouseCursor;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? thumbColor;
  final String Function(double)? semanticFormatterCallback;

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildSlider(
        value,
        onChanged,
        onChangeStart,
        onChangeEnd,
        min,
        max,
        divisions,
        label,
        focusNode,
        vertical,
        autofocus,
        mouseCursor,
        activeColor,
        inactiveColor,
        thumbColor,
        semanticFormatterCallback);
  }
}
