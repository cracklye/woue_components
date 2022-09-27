import 'package:flutter/widgets.dart';
import 'package:woue_components/src/woue.dart';

class WoueDebug extends StatelessWidget {
  const WoueDebug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        '  isFluent ${Woue.isFluent(context)}\n  isMaterial ${Woue.isMaterial(context)}\n' +
            '  isMacos ${Woue.isMacos(context)} \n  isCupertino ${Woue.isCupertino(context)}\n ' +
            ' isYaru ${Woue.isYaru(context)} ');
  }
}
