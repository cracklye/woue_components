import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class Divider extends StatelessWidget {
  const Divider(
      {super.key,
      this.height,
      this.thickness,
      this.indent,
      this.endIndent,
      this.color});

  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildDivider();
  }
}
