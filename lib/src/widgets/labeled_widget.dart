import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class LabeledWidget extends StatelessWidget {
  const LabeledWidget(
      {Key? key,
      required this.buildLabel,
      required this.buildWidget,
      this.width})
      : super(key: key);

  final Widget Function(BuildContext) buildWidget;
  final Widget Function(BuildContext) buildLabel;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(width: width, child: buildLabel(context)),
        buildWidget(context),
      ],
    );
  }
}
