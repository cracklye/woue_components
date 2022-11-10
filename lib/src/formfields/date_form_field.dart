// import 'package:flutter/widgets.dart';

// import 'package:woue_components/woue_components.dart';

// class DateTimeFormField extends FormField<DateTime?> {
//   DateTimeFormField({
//     Key? key,
//     DateTime? initialValue,
//     bool enabled = true,
//     AutovalidateMode? autovalidateMode,
//     void Function(DateTime?)? onChanged,
//     onSaved,
//     validator,
//   }) : super(
//             enabled: enabled,
//             autovalidateMode: autovalidateMode,
//             onSaved: onSaved,
//             validator: validator,
//             key: key,
//             initialValue: initialValue,
//             builder: (state) {
//               // final CheckboxFieldState state =
//               //     baseState as CheckboxFieldState;

//               var tb =
//                   DateTimeField(value: state.value, onChanged: state.didChange);
//               if (state.hasError) {
//                 return Wrap(children: [tb, Text("Error ${state.errorText}")]);
//               } else {
//                 return tb;
//               }
//             });
// }

// class DateTimeField extends StatefulWidget {
//   const DateTimeField({super.key, this.value, required this.onChanged});
//   final DateTime? value;
//   final Function(DateTime?) onChanged;

//   @override
//   State<DateTimeField> createState() => _DateTimeFieldState();
// }

// class _DateTimeFieldState extends State<DateTimeField> {
//   DateTime? _value;

//   @override
//   void initState() {
//     _value = widget.value;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return (Row(
//       children: [
//         buildLabel(context),
//         IconButton(
//             icon: const Icon(AppIcons.date_time), onPressed: _selectDate),
//         (_value == null)
//             ? const Icon(
//                 AppIcons.delete,
//                 color: AppColours.grey,
//                 size: 14,
//               )
//             : IconButton(
//                 icon: const Icon(AppIcons.delete), onPressed: _removeDate),
//       ],
//     ));
//   }

//   _removeDate() {
//     _setValue(null);
//   }

//   _setValue(DateTime? newValue) {
//     setState(() {
//       _value = newValue;
//     });
//     widget.onChanged(newValue);
//   }

//   _selectDate() async {
//     DateTime? rtn = await m.showDatePicker(
//         context: context,
//         initialDate: _value ?? DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime.now().add(const Duration(days: 365 * 5)));
//     if (rtn != null) {
//       _setValue(rtn);
//     }
//   }

//   Widget buildLabel(BuildContext context) {
//     if (_value == null) {
//       return const Text("no date");
//     } else {
//       return Text("$_value");
//     }
//   }
// }
