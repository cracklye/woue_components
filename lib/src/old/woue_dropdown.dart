// import 'package:fluent_ui/fluent_ui.dart' as f;
// import 'package:flutter/cupertino.dart' as c;
// import 'package:macos_ui/macos_ui.dart' as o;
// import 'package:flutter/material.dart' as m;

// import 'package:flutter/widgets.dart';

// import 'package:woue_components/src/widgets/woue_base.dart';

// class WoueDropdown<T> extends StatelessWidget with WOUEBase {
//   final T? value;
//   final List<T> options;
//   final void Function(T? value) onChanged;
//   final Widget? placeholder;

//   const WoueDropdown(
//       {Key? key,
//       required this.onChanged,
//       required this.options,
//       this.value,
//       this.placeholder})
//       : super(key: key);

// //   @override
// //   Widget buildCupertino(BuildContext context) {
// //   // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoPicker.
// //   void _showDialog(Widget child) {
// //     c.showCupertinoModalPopup<void>(
// //         context: context,
// //         builder: (BuildContext context) => Container(
// //               height: 216,
// //               padding: const EdgeInsets.only(top: 6.0),
// //               // The Bottom margin is provided to align the popup above the system navigation bar.
// //               margin: EdgeInsets.only(
// //                 bottom: MediaQuery.of(context).viewInsets.bottom,
// //               ),
// //               // Provide a background color for the popup.
// //               color: c.CupertinoColors.systemBackground.resolveFrom(context),
// //               // Use a SafeArea widget to avoid system overlaps.
// //               child: SafeArea(
// //                 top: false,
// //                 child: child,
// //               ),
// //             ));
// //   }
// // return c.CupertinoButton(
// //                 padding: EdgeInsets.zero,
// //                 // Display a CupertinoPicker with list of fruits.
// //                 onPressed: () => _showDialog(
// //                   c.CupertinoPicker(
// //                     magnification: 1.22,
// //                     squeeze: 1.2,
// //                     useMagnifier: true,
// //                    //itemExtent: _kItemExtent,
// //                     // This is called when selected item is changed.
// //                     onSelectedItemChanged: (int selectedItem) {
// //                       setState(() {
// //                         _selectedFruit = selectedItem;
// //                       });
// //                     },
// //                     children:
// //                         List<Widget>.generate(_fruitNames.length, (int index) {
// //                       return Center(
// //                         child: Text(
// //                           _fruitNames[index],
// //                         ),
// //                       );
// //                     }),
// //                   ),
// //                 ),
// //                 // This displays the selected fruit name.
// //                 child: Text(
// //                   _fruitNames[_selectedFruit],
// //                   style: const TextStyle(
// //                     fontSize: 22.0,
// //                   ),
// //                 ),
// // );

// //   }

//   @override
//   Widget buildFluent(BuildContext context) {
//     return f.Combobox<T>(
//       placeholder: placeholder,
//       isExpanded: true,
//       items: options
//           .map((e) => f.ComboboxItem<T>(
//                 value: e,
//                 child: Text(e.toString()),
//               ))
//           .toList(),
//       value: value,
//       onChanged: onChanged,
//     );
//   }

//   @override
//   Widget buildMacos(BuildContext context) {
//     List<o.MacosPopupMenuItem<T>>? menuitems =
//         (options.map<o.MacosPopupMenuItem<T>>((T value) {
//       return o.MacosPopupMenuItem<T>(
//         value: value,
//         child: Text(value.toString()),
//       );
//     }).toList());

//     return o.MacosPopupButton<T>(
//         value: value, onChanged: onChanged, items: menuitems);
//   }

//   @override
//   Widget buildMaterial(BuildContext context) {
//     return m.DropdownButton<T>(
//       value: value,
//       //icon: const Icon(Icons.arrow_downward),
//       elevation: 16,
//       // style: const TextStyle(color: Colors.deepPurple),
//       // underline: Container(
//       //   height: 2,
//       //   color: m.Colors.deepPurpleAccent,
//       // ),
//       onChanged: onChanged,
//       items: options.map<m.DropdownMenuItem<T>>((T value) {
//         return m.DropdownMenuItem<T>(
//           value: value,
//           child: Text(value.toString()),
//         );
//       }).toList(),
//     );
//   }
// }
