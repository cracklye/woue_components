import 'package:woue_components/src/woue_provider.dart';

enum DesignFrameworkOptions { yaru, fluent, material, cupertino, macos }

/// Woue
class Woue {
  static Woue? _instance;

  static Woue active() {
    if (_instance == null)
      {throw Exception("No provider has been set up, please set and try again");}
    return _instance!;
  }

  static WoueProvider get provider => active().activeProvider;

  static init(WoueProvider provider) {
    _instance = Woue(activeProvider: provider);
  }

  WoueProvider activeProvider;
  Woue({required this.activeProvider});
}
