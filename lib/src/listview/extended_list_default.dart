import 'package:flutter/widgets.dart';
import 'package:woue_components/src/listview/extended_list_view.dart';

/// Stores the parameters for the size slider
class SizeParameters {
  SizeParameters(this.max, this.min, this.getLabel);
  final double max;
  final double min;
  final String Function(double value)? getLabel;
}

typedef ExtendedListItemBuilder<T> = Widget Function(BuildContext context,
    ExtendedListContext<T> listContext, T item, bool isSelected);

abstract class ListViewLayoutProvider<T> {
  /// If this function is provided then the size slider will be shown based on the values
  SizeParameters Function()? getSizeParameters;

  /// Whether to show the sort option (if its provided)
  bool get enableSorting;

  // Whether to show the search bar, false will not show it, true will show it, and null will use the user settings
  bool? get enableSearch;

  // This widget will be inserted under the toolbar but above the main content
  Widget Function(BuildContext buildContext)? buildToolbarSub;

  Widget Function()? buildLoadingContent;
  Widget Function()? buildNoContent;
  Widget buildContent(BuildContext context, List<T> items, ExtendedListContext<T> listContext);

  IconData get selectIcon;
  String get selectLabel;
  bool get enabled;
  bool get visible;
  String get key;

  ExtendedListItemBuilder<T>? get builder;
}

abstract class ListViewLayoutDefault<T> extends ListViewLayoutProvider<T> {
  ListViewLayoutDefault({
    required this.selectIcon,
    required this.key,
    this.selectLabel = "",
    this.visible = true,
    this.enabled = true,
    this.enableSearch = true,
    this.enableSorting = true,
    this.getSizeParameters,
    this.builder,
  });
  final ExtendedListItemBuilder<T>? builder;

  SizeParameters Function()? getSizeParameters;

  /// Whether to show the sort option (if its provided)
  final bool enableSorting;

  // Whether to show the search bar, false will not show it, true will show it, and null will use the user settings
  final bool? enableSearch;

  final bool enabled;

  final bool visible;

  final IconData selectIcon;

  final String selectLabel;

  final String key;

  // This widget will be inserted under the toolbar but above the main content
  Widget Function(BuildContext buildContext)? buildToolbarSub;

  @override
  Widget Function()? get buildLoadingContent => _buildLoadingContent;
  Widget _buildLoadingContent() {
    return Text("Loading");
  }

  @override
  Widget Function()? get buildNoContent => _buildNoContent;

  Widget _buildNoContent() {
    return Text("No items available");
  }

  @override
  Widget buildContent(BuildContext context, List<T> items, ExtendedListContext<T> listContext) {
    return Text("The buildContent method needs to be overridden $items");
  }
}
