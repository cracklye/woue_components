import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/cupertino.dart' as c;
import 'package:macos_ui/macos_ui.dart' as o;
import 'package:flutter/material.dart' as m;

import 'package:flutter/widgets.dart';

import 'package:woue_components/src/widgets/woue_base.dart';

class WoueSlider extends StatelessWidget with WOUEBase {
  final void Function(double) onChanged;
  final double value;
  final double min;
  final double max;
  final int divisions;

  const WoueSlider({
    Key? key,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget buildCupertino(BuildContext context) {
    return c.CupertinoSlider(
      onChanged: onChanged,
      min: min,
      max: max,
      value: value,
      divisions: divisions,
    );
  }

  @override
  Widget buildFluent(BuildContext context) {
    return f.Slider(
      divisions: divisions,
      min: min,
      max: max,
      value: value,
      onChanged: onChanged,
    );
  }
 @override
  Widget buildMacos(BuildContext context) {
    return buildCupertino(context);
  }
  // @override
  // Widget buildMacos(BuildContext context) {
  //   return o.Slider(
  //     buttonSize: o.ButtonSize.large,
  //     onPressed: onPressed,
  //     child: child,
  //   );
  // }

  @override
  Widget buildMaterial(BuildContext context) {
    return m.Slider(
      divisions: divisions,
      min: min,
      max: max,
      value: value,
      onChanged: onChanged,
    );
  }
}
