// import 'package:fluent_ui/fluent_ui.dart' as f;
// import 'package:flutter/cupertino.dart' as c;
// import 'package:macos_ui/macos_ui.dart' as o;
// import 'package:flutter/material.dart' as m;

// import 'package:flutter/widgets.dart';

// import 'package:woue_components/src/widgets/woue_base.dart';

// class WoueButton extends StatelessWidget with WOUEBase {
//   final Widget child;
//   final void Function() onPressed;

//   const WoueButton({
//     Key? key,
//     required this.child,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget buildCupertino(BuildContext context) {
//     return c.CupertinoButton(child: child, onPressed: onPressed);
//   }

//   @override
//   Widget buildFluent(BuildContext context) {
//     return f.Button(
//       child: child,
//       onPressed: onPressed,
//     );
//   }

//   @override
//   Widget buildMacos(BuildContext context) {
//     return o.PushButton(
//       buttonSize: o.ButtonSize.large,
//       onPressed: onPressed,
//       child: child,
//     );
//   }

 
// }
