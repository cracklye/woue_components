import 'package:woue_components/src/material/material_provider.dart';
import 'package:woue_components/src/woue_provider.dart';

enum DesignFrameworkOptions { yaru, fluent, material, cupertino, macos }


/// Woue
class Woue {
  
  static Woue? _instance;

  static Woue active() {
    if (_instance == null) init();
    return _instance!;
  }

  static WoueProvider get provider => active().activeProvider;

  static init({WoueProvider provider = const MaterialProvider()}) {
    _instance = Woue(activeProvider: provider);
  }

  WoueProvider activeProvider;
  Woue({required this.activeProvider});
}
