
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class ElevatedButton extends StatelessWidget {
  const ElevatedButton(
      {Key? key,
      required this.child,
      this.onPressed,
      this.onLongPress,
      this.onFocusChange,
      this.onHover,
      this.focusNode,
      this.autofocus = false})
      : super(key:key);

  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Function(bool)? onFocusChange;
  final Function(bool)? onHover;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildElevatedButton(key, child, onPressed, onLongPress,
        onFocusChange, onHover, focusNode, autofocus);
  }
}
