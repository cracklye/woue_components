import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class Slider extends StatelessWidget {
  Slider({
    Key? key,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildSlider(key, child, onPressed, onLongPress,
        onFocusChange, onHover, focusNode, autofocus);
  }
}
