import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/cupertino.dart' as c;
import 'package:macos_ui/macos_ui.dart' as o;
import 'package:flutter/material.dart' as m;
import 'package:flutter/widgets.dart' as w;

import 'package:woue_components/src/design_framework.dart';
import 'package:woue_components/src/woue.dart';

abstract class WOUEBase {
  w.Widget build(w.BuildContext context) {
    if (Woue.isMaterial(context)) {
      return buildMaterial(context);
    } else if (Woue.isFluent(context)) {
      return buildFluent(context);
    } else if (Woue.isCupertino(context)) {
      return buildCupertino(context);
    } else if (Woue.isMacos(context)) {
      return buildMacos(context);
    } else if (Woue.isYaru(context)) {
      return buildYaru(context);
    }
    return w.Container();
  }

  w.Widget buildMaterial(w.BuildContext context) {
    throw Exception("material design is not implemented in this component");
  }

  w.Widget buildFluent(w.BuildContext context) {
    throw Exception("fluent design is not implemented in this component");
  }

  w.Widget buildCupertino(w.BuildContext context) {
    throw Exception("cupertino design is not implemented in this component");
  }

  w.Widget buildMacos(w.BuildContext context) {
    throw Exception("macos design is not implemented in this component");
  }

  w.Widget buildYaru(w.BuildContext context) {
    return buildMaterial(context);
  }
}
