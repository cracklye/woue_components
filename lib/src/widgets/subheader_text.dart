import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart';

class SubHeader extends StatelessWidget {
  const SubHeader(this.text, {Key? key, this.colorSplash, this.icon})
      : super(key: key);
  final String text;
  final Color? colorSplash;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              width: colorSplash != null ? 16.0 : 0,
              color: colorSplash ?? m.Colors.transparent,
            ),
          ),
          //borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.fromLTRB(00.0, 0.0, 00.0, 0),
        padding:
            EdgeInsets.fromLTRB(colorSplash != null ? 0.0 : 0.0, 0, 00.0, 15),
        child: Row(
          children: [
            icon != null
                ? Padding(padding: const EdgeInsets.all(5.0), child: Icon(icon))
                : Container(),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(fontSize: 25),
            )),
          ],
        ));
  }
}
