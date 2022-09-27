import 'package:woue_components/src/material/material_provider.dart';
import 'package:woue_components/src/woue_provider.dart';

enum DesignFrameworkOptions { yaru, fluent, material, cupertino, macos }

class DesignProvider {
  static DesignProvider? _instance;
  static DesignProvider active() {
    if (_instance == null) init();
    return _instance!;
  }

  static WoueProvider get provider => active().activeProvider;

  static init({WoueProvider provider = const MaterialProvider()}) {
    _instance = DesignProvider(activeProvider: provider);
  }

  WoueProvider activeProvider;
  DesignProvider({required this.activeProvider});
}
