
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/widgets.dart';
// import 'package:woue_components/src/design_framework.dart';


// class ComboEntry<T>  {

//   final T value; 
//   final Widget child; 
  

// }

// class Combo<T> extends StatelessWidget {
//   Combo({
//     Key? key,
//     required this.items,
//     this.selectedItemBuilder,
//     this.value,
//     this.hint,
//     this.disabledHint,
//     this.onChanged,
//     this.onTap,
//     this.elevation = 8,
//     this.style,
//     this.underline,
//     this.icon,
//     this.iconDisabledColor,
//     this.iconEnabledColor,
//     this.iconSize = 24.0,
//     this.isDense = false,
//     this.isExpanded = false,
//     this.itemHeight ,
//     this.focusColor,
//     this.focusNode,
//     this.autofocus = false,
//     this.dropdownColor,
//     this.menuMaxHeight,
//     this.enableFeedback,
//     this.alignment = AlignmentDirectional.centerStart,
//     this.borderRadius,
//   }) : super();

//   final List<ComboEntry<T>>? items;
//   final List<Widget> Function(BuildContext)? selectedItemBuilder;
//   final T? value;
//   final Widget? hint;
//   final Widget? disabledHint;
//   final void Function(T?)? onChanged;
//   final void Function()? onTap;
//   final int elevation;
//   final TextStyle? style;
//   final Widget? underline;
//   final Widget? icon;
//   final Color? iconDisabledColor;
//   final Color? iconEnabledColor;
//   final double iconSize;
//   final bool isDense;
//   final bool isExpanded;
//   final double? itemHeight;
//   final Color? focusColor;
//   final FocusNode? focusNode;
//   final bool autofocus;
//   final Color? dropdownColor;
//   final double? menuMaxHeight;
//   final bool? enableFeedback;
//   final AlignmentGeometry alignment;
//   final BorderRadius? borderRadius;

//   @override
//   Widget build(BuildContext context) {
//     return Woue.provider.buildCombo(
//         value,
//         onChanged,
//         onChangeStart,
//         onChangeEnd,
//         min,
//         max,
//         divisions,
//         label,
//         focusNode,
//         vertical,
//         autofocus,
//         mouseCursor,
//         activeColor,
//         inactiveColor,
//         thumbColor,
//         semanticFormatterCallback);
//   }
// }
