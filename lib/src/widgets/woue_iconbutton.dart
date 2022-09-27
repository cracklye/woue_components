import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/cupertino.dart' as c;
import 'package:macos_ui/macos_ui.dart' as o;
import 'package:flutter/material.dart' as m;

import 'package:flutter/widgets.dart';

import 'package:woue_components/src/widgets/woue_base.dart';

class WoueIconButton extends StatelessWidget with WOUEBase {
  final IconData? icon;
  final IconData? iconCupertino;
  final IconData? iconFluent;
  final IconData? iconMacos;
  final IconData? iconMaterial;
  final IconData? iconYaru;
  final void Function() onPressed;

  const WoueIconButton({
    Key? key,
    this.icon,
    this.iconCupertino,
    this.iconFluent,
    this.iconMacos,
    this.iconMaterial,
    this.iconYaru,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget buildCupertino(BuildContext context) {
    return c.CupertinoButton(
        child: Icon(iconFluent ?? icon!), onPressed: onPressed);
  }

  @override
  Widget buildFluent(BuildContext context) {
    return f.IconButton(
      icon: Icon(iconFluent ?? icon!),
      onPressed: onPressed,
    );
  }

  @override
  Widget buildMacos(BuildContext context) {
    return o.PushButton(
      buttonSize: o.ButtonSize.large,
      onPressed: onPressed,
      child: o.MacosIcon(
        iconMacos ?? icon!,
        // color: CupertinoColors.activeBlue.color,
        // size: 20,
      ),
    );
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return m.IconButton(
      icon: Icon(iconFluent ?? icon!),
      onPressed: onPressed,
    );
  }
}
