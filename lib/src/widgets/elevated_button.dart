import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class ElevatedButton extends StatelessWidget {
  ElevatedButton(
      {Key? key,
      required this.child,
      this.onPressed,
      this.onLongPress,
      this.onFocusChange,
      this.onHover,
      this.focusNode,
      this.autofocus = false})
      : super();

  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Function(bool)? onFocusChange;
  final Function(bool)? onHover;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return DesignProvider.provider.buildElevatedButton(key, child, onPressed,
        onLongPress, onFocusChange, onHover, focusNode, autofocus);
  }
}
