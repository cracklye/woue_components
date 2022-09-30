// import 'package:fluent_ui/fluent_ui.dart' as f;
// import 'package:flutter/cupertino.dart' as c;
// import 'package:macos_ui/macos_ui.dart' as o;
// import 'package:flutter/material.dart' as m;

// import 'package:flutter/widgets.dart';

// import 'package:woue_components/src/widgets/woue_base.dart';

// class WoueSwitch extends StatelessWidget with WOUEBase {
//   final bool checked;

//   final void Function(bool value) onChanged;

//   const WoueSwitch({Key? key, required this.onChanged, this.checked = false})
//       : super(key: key);

//   @override
//   Widget buildCupertino(BuildContext context) {
//     return c.CupertinoSwitch(
//       onChanged: onChanged,
//       value: checked,
//     );
//   }

//   @override
//   Widget buildFluent(BuildContext context) {
//     return f.ToggleButton(
//       checked: checked,
//       onChanged: onChanged,
//     );
//   }

//   @override
//   Widget buildMacos(BuildContext context) {
//     return o.MacosSwitch(value: checked, onChanged: onChanged);
//   }

//   @override
//   Widget buildMaterial(BuildContext context) {
//     return m.Switch(
//       onChanged: onChanged,
//       value: checked,
//     );
//   }
// }
