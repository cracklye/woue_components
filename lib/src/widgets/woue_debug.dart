import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class WoueDebug extends StatelessWidget {
  const WoueDebug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' ${Woue.provider} ');
  }
}
