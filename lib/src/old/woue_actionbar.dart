// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:fluent_ui/fluent_ui.dart' as f;
// import 'package:flutter/cupertino.dart' as c;
// import 'package:macos_ui/macos_ui.dart' as o;
// import 'package:flutter/material.dart' as m;

// import 'package:flutter/widgets.dart';

// import 'package:woue_components/src/widgets/woue_base.dart';

// class WoueActionBarItem {
//   final Widget label;
//   final Widget? subtitle;
//   final Widget? icon;
//   final void Function(WoueActionBarItem) onPressed;
//   WoueActionBarItem(
//       {required this.label, required this.onPressed, this.icon, this.subtitle});
// }

// class WoueActionBar extends StatelessWidget with WOUEBase {
//   final List<WoueActionBarItem> primaryItems;
//   final List<WoueActionBarItem>? secondaryItems;

//   const WoueActionBar(
//       {Key? key, required this.primaryItems, this.secondaryItems})
//       : super(key: key);

//   @override
//   Widget buildCupertino(BuildContext context) {
//     return Row(
//       children: primaryItems
//           .map<Widget>((e) => c.CupertinoButton(
//                 child: e.label,
//                 //icon: e.icon,
//                 onPressed: () => e.onPressed(e),
//               ))
//           .toList(),
//     );
//   }

//   @override
//   Widget buildFluent(BuildContext context) {
//     return f.CommandBar(
//       mainAxisAlignment: MainAxisAlignment.end,
//       // overflowBehavior: CommandBarOverflowBehavior.dynamicOverflow,
//       compactBreakpointWidth: 768,
//       primaryItems: primaryItems
//           .map<f.CommandBarButton>((item) => f.CommandBarButton(
//                 subtitle: item.subtitle,
//                 icon: item.icon,
//                 label: item.label,
//                 onPressed: () {
//                   item.onPressed(item);
//                 },
//               ))
//           .toList(),
//       //secondaryItems: getSecondaryCommandButtons(context)
//     );
//   }

//   // @override
//   // Widget buildMacos(BuildContext context) {
//   //   return o.MacosSwitch(value: checked, onChanged: onChanged);
//   // }

//   @override
//   Widget buildMaterial(BuildContext context) {
//     final m.ButtonStyle style = m.TextButton.styleFrom(
//       primary: m.Theme.of(context).colorScheme.onPrimary,
//     );

//     return f.Row(
//         children: primaryItems
//             .map<f.Widget>(
//               (item) => m.TextButton.icon(
//                 icon: item.icon!,
//                 label: item.label,
//                 onPressed: () => item.onPressed(item),
//                 style: style,
//               ),
//             )
//             .toList());
//   }
// }
