import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/widgets.dart';
import 'package:loggy/loggy.dart';
import 'package:woue_components/woue_components.dart';

class TestExtendedList extends StatefulWidget {
  const TestExtendedList({super.key});

  @override
  State<TestExtendedList> createState() => _TestExtendedListState();
}

class _TestExtendedListState extends State<TestExtendedList> {
  static ListViewLayoutList<String> layoutList =
      ListViewLayoutList<String>(selectIcon: f.FluentIcons.a_a_d_logo);
  static ListViewLayoutGrid<String> layoutGrid = ListViewLayoutGrid<String>(
      selectIcon: f.FluentIcons.gripper_dots_vertical);
  static ListViewLayoutSortable<String> layoutSortable =
      ListViewLayoutSortable(selectIcon: f.FluentIcons.a_a_d_logo);
  static ListViewLayoutTable<String> layoutTable =
      ListViewLayoutTable<String>(selectIcon: f.FluentIcons.table_header_row);

  CustomListItem layoutListWithToolbars = CustomListItem(
      key: "custom toolbox",
      selectIcon: f.FluentIcons.toolbox,
      buildToolbarSub: (ctx) => Text("THis is the sub toolbar from the layout"),
      buildToolbarFooter: (ctx) => Text("THis is the footer from layout"));

  //final ListViewLayoutList layoutList = ListViewLayoutList(selectIcon: f.FluentIcons.a_a_d_logo);

  bool _isLoading = false;
  bool _itemsEmpty = false;
  String _lastAction = "";
  bool _showAdditionalIcons = false;
  bool _showBuildSubToolbar = false;
  bool _showFooter = false;
  bool _callSearchOnEnter = false;
  bool _enableSearch = true;
  bool _showFooterText = true;
  bool _enableSearchClear = false;
  List<ListViewLayoutProvider<String>> layouts = [
    layoutList,
  ];
  List<String> values = ["Item 1", "Itme 2", "Item 3"];
  List<String> emptyValues = [];

  @override
  Widget build(BuildContext context) {
    try {
      // return Text("hi");
      return Column(
        children: [
          buildLastAction(),
          buildToolbar(),
          buildLayoutRow(),
          Expanded(
              child: ExtendedListView(
            onDoubleTap: (p0) => _updateLastAction("onDoubleTap $p0"),
            onTap: (p0) => _updateLastAction("onDoubleTap $p0"),
            onLongTap: (p0) => _updateLastAction("onLongTap $p0"),
            onReorder:
                (previousPosition, newPosition, item, before, after, parent) =>
                    _updateLastAction("on Reorder has been called"),
            onFilterByChange: (p0) => _updateLastAction("onFilterByChange $p0"),
            onOrderByChange: (p0) => _updateLastAction("onOrderByChange $p0"),
            onSearchChange: (p0) => _updateLastAction("onSearchChange $p0"),
            onSearchClear: _enableSearchClear
                ? (p0) => _updateLastAction("onSearchClear $p0")
                : null,
            footerText: _showFooterText ? "This is some footer text" : "",
            enableSearch: _enableSearch,
            isLoading: _isLoading,
            buildViewIcons: _showAdditionalIcons ? buildAdditionalIcons : null,
            items: _itemsEmpty ? emptyValues : values,
            listDataProviders: layouts,
            buildToolbarFooter:
                _showFooter ? (context) => buildToolbarFooter(context) : null,
            buildToolbarSub: _showBuildSubToolbar
                ? (context) => buildToolbarSub(context)
                : null,
          ))
        ],
      );
    } catch (e) {
      logError("Error occurred $e", e);
      return Text("Error: $e");
    }
  }

  void _updateLastAction(String message) {
    setState(() {
      _lastAction = message;
    });
  }

  Widget buildLastAction() {
    return Text("$_lastAction");
  }

  List<Widget> buildAdditionalIcons(BuildContext context) {
    return [
      Icon(f.FluentIcons.account_management),
      Icon(f.FluentIcons.add_event)
    ];
  }

  Widget buildToolbarFooter(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(child: Text("First")),
        ElevatedButton(child: Text("Second")),
        Text("This is a custom toolbar")
      ],
    );
  }

  Widget buildToolbarSub(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(child: Text("First")),
        ElevatedButton(child: Text("Second")),
        Text("This is a custom toolbar")
      ],
    );
  }

  Widget buildToolbar() {
    return Wrap(
      children: [
        Checkbox(
          value: _isLoading,
          onChanged: (value) => setState(() {
            _isLoading = !_isLoading;
          }),
        ),
        Text("Is Loading"),
        Checkbox(
          value: _itemsEmpty,
          onChanged: (value) => setState(() {
            _itemsEmpty = !_itemsEmpty;
          }),
        ),
        Text("Empty Items"),
        Checkbox(
          value: _showAdditionalIcons,
          onChanged: (value) => setState(() {
            _showAdditionalIcons = !_showAdditionalIcons;
          }),
        ),
        Text("showAdditionalIcons"),
        Checkbox(
          value: _showBuildSubToolbar,
          onChanged: (value) => setState(() {
            _showBuildSubToolbar = !_showBuildSubToolbar;
          }),
        ),
        Text("showBuildSubToolbar"),
        Checkbox(
          value: _callSearchOnEnter,
          onChanged: (value) => setState(() {
            _callSearchOnEnter = !_callSearchOnEnter;
          }),
        ),
        Text("callSearchOnEnter (NI)"),
        Checkbox(
          value: _showFooter,
          onChanged: (value) => setState(() {
            _showFooter = !_showFooter;
          }),
        ),
        Text("Show Footer"),
        Checkbox(
          value: _enableSearch,
          onChanged: (value) => setState(() {
            _enableSearch = !_enableSearch;
          }),
        ),
        Text("Enable Search"),

        Checkbox(
          value: _showFooterText,
          onChanged: (value) => setState(() {
            _showFooterText = !_showFooterText;
          }),
        ),
        Text("Show Footer Text"),
        Checkbox(
          value: _enableSearchClear,
          onChanged: (value) => setState(() {
            _enableSearchClear = !_enableSearchClear;
          }),
        ),
        Text("Enable Search Clear"),

        // ElevatedButton(
        //   child: Text(
        //     "IsLoading",
        //   ),
        //   onPressed: () => setState(() {
        //     _isLoading = !_isLoading;
        //   }),
        // )
      ],
    );
  }

  Widget buildLayoutRow() {
    return Wrap(children: [
      Text("Layouts:"),
      buildLayoutOption(layoutList),
      Text("List"),
      buildLayoutOption(layoutGrid),
      Text("Grid"),
      buildLayoutOption(layoutSortable),
      Text("sortable"),
      buildLayoutOption(layoutTable),
      Text("Table"),
      buildLayoutOption(layoutListWithToolbars),
      Text("layoutListWithToolbars"),
    ]);
  }

  Widget buildLayoutOption(ListViewLayoutProvider<String> item) {
    return Checkbox(
      value: layouts.contains(item),
      onChanged: (value) => setState(() {
        if (value!) {
          layouts.add(item);
        } else if (layouts.length > 1) {
          layouts.remove(item);
        }
        layouts = layouts;
      }),
    );
  }
}

class CustomListItem extends ListViewLayoutProvider<String> {
  CustomListItem({
    required this.selectIcon,
    required this.key,
    this.selectLabel = "",
    this.visible = true,
    this.enabled = true,
    this.enableSearch = true,
    this.enableSorting = true,
    this.getSizeParameters,
    this.builder,
    this.buildToolbarSub,
    this.buildToolbarFooter,
  });
  @override
  ExtendedListItemBuilder<String>? builder;
  @override
  SizeParameters Function()? getSizeParameters;
  @override

  /// Whether to show the sort option (if its provided)
  bool enableSorting;
  @override
  // Whether to show the search bar, false will not show it, true will show it, and null will use the user settings
  bool? enableSearch;
  @override
  bool enabled;
  @override
  bool visible;
  @override
  IconData selectIcon;
  @override
  String selectLabel;
  @override
  String key;
  @override

  // This widget will be inserted under the toolbar but above the main content
  Widget Function(BuildContext buildContext)? buildToolbarSub;
  Widget Function(BuildContext buildContext)? buildToolbarFooter;

  @override
  Widget Function()? get buildLoadingContent => _buildLoadingContent;
  Widget _buildLoadingContent() {
    return const Text("Loading Different content");
  }

  @override
  Widget Function()? get buildNoContent => _buildNoContent;

  Widget _buildNoContent() {
    return const Text("No items available custom content");
  }

  @override
  Widget buildContent(BuildContext context, List<String> items,
      ExtendedListContext<String> listContext) {
    return Column(
      children: items
          .map((e) => ListTile(
                title: Text(e),
              ))
          .toList(),
    );
  }
}
