// import 'package:fluent_ui/fluent_ui.dart' as f;
// import 'package:flutter/cupertino.dart' as c;
// import 'package:macos_ui/macos_ui.dart' as o;
// import 'package:flutter/material.dart' as m;

// import 'package:flutter/widgets.dart';

// import 'package:woue_components/src/widgets/woue_base.dart';

// class WoueListTile extends StatelessWidget with WOUEBase {
//   final Widget title;
//   final Widget? subtitle;
//   final Widget? leading;
//   final Widget? trailing;

//   final void Function()? onPressed;

//   const WoueListTile({
//     Key? key,
//     required this.title,
//     this.subtitle,
//     this.leading,
//     this.trailing,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget buildCupertino(BuildContext context) {
//     //return c.ListTile(child: child, onPressed: onPressed);
//     return title;
//   }

//   @override
//   Widget buildFluent(BuildContext context) {
//     return f.ListTile(
//       title: title,
//       subtitle: subtitle,
//       leading: leading,
//       trailing: trailing,
//     );
//   }

//   @override
//   Widget buildMacos(BuildContext context) {
//     return o.MacosListTile(
//       onClick: onPressed,
//       title: title,
//       subtitle: subtitle,
//       leading: leading,
//       //trailing: trailing,
//     );
//   }

//   @override
//   Widget buildMaterial(BuildContext context) {
//     return m.ListTile(
//       title: title,
//       subtitle: subtitle,
//       leading: leading,
//       trailing: trailing,
//     );
//   }
// }


// // class CupertinoListTile extends StatefulWidget {
// //   final Widget? leading;
// //   final String title;
// //   final String? subtitle;
// //   final Widget? trailing;

// //   const CupertinoListTile({Key key, this.leading, this.title, this.subtitle, this.trailing}): super(key: key);

// //   @override
// //   _StatefulStateCupertino createState() => _StatefulStateCupertino();
// // }

// // class _StatefulStateCupertino extends State<CupertinoListTile> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: <Widget>[
// //           Row(
// //             children: <Widget>[
// //               widget.leading,
// //               SizedBox(width: 20),
// //               Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: <Widget>[
// //                   Text(
// //                     widget.title,
// //                     style: TextStyle(
// //                       color: c.CupertinoColors.white,
// //                       fontSize: 25,
// //                       )
// //                   ),
// //                   Text(
// //                     widget.subtitle,
// //                     style: TextStyle(
// //                       color: c.CupertinoColors.systemGrey,
// //                       fontSize: 20,
// //                       )
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //           widget.trailing,
// //         ],
// //       ),
// //     );
// //   }
// // }