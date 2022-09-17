import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/cupertino.dart' as c;
import 'package:macos_ui/macos_ui.dart' as o;
import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart';
import 'package:woue_components/src/woue.dart';
import 'package:woue_components/src/woue_base.dart';

class WoueButton extends StatelessWidget {
  const WoueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Woue.isFluent(context)) {
      return f.Button(child: Text("Test"), onPressed: () => print("Test"));
    }

    return Text("Not handled");
  }
}
