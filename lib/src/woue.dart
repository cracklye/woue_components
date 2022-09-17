import 'package:woue_components/src/design_framework.dart';
import 'package:flutter/widgets.dart' as w;

class Woue {
  static DesignFramework? _design;

  static void init([DesignFramework? framework]) {
    _design = framework ?? DesignFramework.material;
  }

  static DesignFramework get design {
    if (_design == null) init(DesignFramework.fluent);
    return _design!;
  }

  static bool isYaru(w.BuildContext context) {
    return _design == DesignFramework.yaru;
  }

  static bool isFluent(w.BuildContext context) {
    return _design == DesignFramework.fluent;
  }

  static bool isMaterial(w.BuildContext context) {
    return _design == DesignFramework.material;
  }

  static bool isMacos(w.BuildContext context) {
    return _design == DesignFramework.macos;
  }

  static bool isCupertino(w.BuildContext context) {
    return _design == DesignFramework.cupertino;
  }
}
