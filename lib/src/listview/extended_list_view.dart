import 'package:flutter/widgets.dart';
import 'package:loggy/loggy.dart';
import 'package:woue_components/src/listview/extended_list_default.dart';
import 'package:woue_components/src/widgets/slider.dart';
import 'package:woue_components/woue_components.dart';
import 'package:flutter/material.dart' as m;
// enum ListViewType {
//   tree,
//   list,
//   grid,
//   table,
//   sortable,
//   map,
// }

//abstract class ListDataProvider {}

abstract class SortOrderBy {
  String get key;
}

class SortOrderByFieldName extends SortOrderBy {
  final String fieldName;
  final bool ascending;
  @override
  final String key;

  SortOrderByFieldName(this.key, this.fieldName, this.ascending);
}

abstract class Filter<T> {
  String get key;
}

enum FilterComparison { equals, notequals, like, greaterthan, lessthan, isin }

class FilterField<T> extends Filter<T> {
  final dynamic value;
  final String fieldName;
  @override
  final String key;
  final bool isString;
  final String label;

  final FilterComparison comparison;
  FilterField(this.key, this.fieldName, this.value, this.comparison,
      this.isString, this.label);
}

class OrderByItem<T> {
  final Widget label;
  final List<SortOrderBy> Function() getSortOrders;

  OrderByItem(this.label, this.getSortOrders);
}

class FilterByItem<T> {
  final Widget label;
  final List<Filter<T>> Function() getFilters;
  FilterByItem(this.label, this.getFilters);
}

enum TableColumnType { image, text, numeric, link }

class TableColumn<T> {
  final String label;
  final String key;
  final String? tooltip;
  final Function(TableColumn, int, bool)? onSort;
  final Function(TableColumn, T, dynamic, bool)? onDisplay;

  TableColumn(
      {required this.label,
      required this.key,
      this.tooltip,
      this.onSort,
      this.onDisplay});
}

class ExtendedListContext<T> {
  ExtendedListContext(
      {this.onDoubleTap,
      this.onTap,
      this.onLongTap,
      this.onReorder,
      this.selected});
  final void Function(T)? onTap;
  final void Function(T)? onLongTap;
  final void Function(T)? onDoubleTap;
  final void Function(int previousPosition, int newPosition, T item, T? before,
      T? after, T? parent)? onReorder;
  final List<T>? selected;
  bool isSelected(T item) => selected?.contains(item) == true;
}

class ExtendedListView<T> extends StatefulWidget {
  ExtendedListView({
    super.key,
    this.selected,
    required this.items,
    this.buildToolbarSub,
    required this.listDataProviders,
    this.orderBy,
    this.filterBy,
    this.onOrderByChange,
    this.onFilterByChange,
    this.onSearchChange,
    this.onTap,
    this.onDoubleTap,
    this.onLongTap,
    this.onReorder,
    this.isLoading = false,
    this.enableSearch = true,
    this.defaultSearchText,
    String? settingsKey,
    SettingsStorage? settings,
  }) : settingsStorer = settings
  // (settings == null && settingsKey != null)
  //           ? SharedPreferencesSettings(settingsKey)
  //           : settings
  ;

  @override
  State<ExtendedListView<T>> createState() => _ExtendedListViewState<T>();
  final List<T>? selected;
  final List<T> items;

  final bool enableSearch;

  final List<ListViewLayoutProvider<T>> listDataProviders;

  final List<OrderByItem>? orderBy;
  final List<FilterByItem<T>>? filterBy;

  final bool isLoading;

  final Function(OrderByItem?)? onOrderByChange;
  final Function(FilterByItem<T>?)? onFilterByChange;
  final Function(String?)? onSearchChange;

  final Function(T)? onTap;
  final Function(T)? onLongTap;
  final Function(T)? onDoubleTap;
  final void Function(int previousPosition, int newPosition, T item, T? before,
      T? after, T? parent)? onReorder;

  final Widget Function(BuildContext)? buildToolbarSub;

  final SettingsStorage? settingsStorer;

  final String? defaultSearchText;
}

abstract class SettingsStorage {
  Future<double> getGridColumns([double defaultValue = 5]);
  Future<ListViewLayoutProvider> getListViewType(
      [ListViewLayoutProvider defaultValue]);
  Future<String> getSearchString();
  Future<void> setgridColumns(
    double gridColumns,
  );
  Future<void> setSearchString(String searchString);
  Future<void> setGridListViewType(ListViewLayoutProvider listViewType);
}

// class SharedPreferencesSettings extends SettingsStorage with UiLoggy {
//   final String key;
//   SharedPreferencesSettings(this.key);

//   @override
//   Future<double> getGridColumns([double defaultValue = 5]) async {
//     // Obtain shared preferences.
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getDouble("$key.grid") ?? defaultValue;
//   }

//   @override
//   Future<ListViewType> getListViewType(
//       [ListViewType defaultValue = ListViewType.list]) async {
//     final prefs = await SharedPreferences.getInstance();
//     String? lookup = prefs.getString("$key.listviewtype");
//     try {
//       return ListViewType.values
//           .firstWhere((element) => element.toString() == lookup);
//     } catch (e) {
//       loggy.warning(e);
//     }
//     return defaultValue;
//   }

//   @override
//   Future<String> getSearchString() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString("$key.searchstring") ?? "";
//   }

//   @override
//   Future<void> setGridListViewType(ListViewType listViewType) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString("$key.listviewtype", listViewType.toString());
//   }

//   @override
//   Future<void> setSearchString(String searchString) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString("$key.searchstring", searchString);
//   }

//   @override
//   Future<void> setgridColumns(double gridColumns) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setDouble("$key.grid", gridColumns);
//   }
// }

class _ExtendedListViewState<T> extends State<ExtendedListView<T>>
    with UiLoggy {
  late ListViewLayoutProvider<T> _listViewType;
  late TextEditingController _searchController;
  late double _gridColumns;

  @override
  void initState() {
    _listViewType = widget.listDataProviders[0];
    _gridColumns = 4;
    _searchController = TextEditingController();
    _searchController.text = (widget.defaultSearchText ?? "");

    if (widget.settingsStorer != null) {
      //_listViewType =
      // widget.settingsStorer!.getListViewType().then((value) {
      //   loggy.debug("Updating the list view type from settings $value");
      //   setState(() {
      //     _listViewType = value;
      //   });
      // });
      // widget.settingsStorer!.getGridColumns().then((value) {
      //   loggy.debug("Updating the grid columnsS from settings $value");
      //   setState(() {
      //     _gridColumns = value;
      //   });
      // });

      //_gridColumns =  widget.settingsStorer!.getGridColumns();
    } else {}

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildToolbar(context),
        (_listViewType.buildToolbarSub != null)
            ? _listViewType.buildToolbarSub!(context)
            : Container(),
        Expanded(child: buildContent(context)),
        buildFooter(context),
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    List<Widget> w = [];
    if (_listViewType.getSizeParameters != null) {
      var params = _listViewType.getSizeParameters!();
      if (params.getLabel != null) {
        w.add(Text(params.getLabel!(_gridColumns)));
      }
      w.add(Slider(
          value: _gridColumns,
          min: params.min,
          max: params.max,
          onChanged: ((p0) async {
            if (widget.settingsStorer != null) {
              widget.settingsStorer!.setgridColumns(p0);
            }
            setState(() {
              _gridColumns = p0;
            });
          })));
    }
    if (w.isEmpty) {
      return Container();
    }

    return SizedBox(
        height: 35,
        child: Row(children: [const Expanded(child: Text("Footer")), ...w]));
  }

  Widget buildContent(BuildContext context) {
    if (widget.isLoading) {
      if (_listViewType.buildLoadingContent != null) {
        return _listViewType.buildLoadingContent!();
      }
      //TODO need to add loading symbol
      return const Text("Loading");
    }

    if (widget.items.isEmpty) {
      //TODO need to format this a bit better (make it customisable)
      if (_listViewType.buildNoContent != null) {
        return _listViewType.buildNoContent!();
      }
      return const Text("No matching entries");
    }

    return _listViewType.buildContent(
        context,
        widget.items,
        ExtendedListContext<T>(
            //TODO need to set parameters.
            selected: widget.selected,
            onTap: widget.onTap,
            onLongTap: widget.onLongTap,
            onDoubleTap: widget.onDoubleTap,
            onReorder: widget.onReorder));
  }

  Widget buildToolbar(BuildContext context) {
    List<Widget> btns = [];
    if (widget.onOrderByChange != null && widget.orderBy != null) {
      if (widget.orderBy!.length > 1) {
        btns.add(DropDownButton<OrderByItem>(
          title: const Icon(m.Icons.arrow_downward),
          onPressed: (p0) => widget.onOrderByChange!(p0),
          items: widget.orderBy!
              .map((e) => DropDownItem<OrderByItem>(
                    //TODO selected:
                    content: e.label,
                    value: e,
                  ))
              .toList(),
        ));

        // for (var ob in widget.orderBy!) {
        //   btns.add(ElevatedButton(
        //     child: ob.label,
        //     onPressed: () => widget.onOrderByChange!(ob),
        //   ));
        // }
      }
    }

    return Row(
      children: [
        Expanded(
          child: buildSearchBox(context),
        ),
        ...btns,
        ...widget.listDataProviders
            .map<Widget>(
              (e) => buildSelectViewButton(context, e),
            )
            .toList(),
      ],
    );
  }

  Widget buildSearchBox(BuildContext context) {
    if (widget.enableSearch) {
      return Row(
        children: [
          const Icon(m.Icons.search),
          Expanded(
              child: m.Material(
                  child: m.TextFormField(
            controller: _searchController,
            onChanged: (value) {
              if (widget.onSearchChange != null) {
                widget.onSearchChange!(value);
              }
            },
          )))
        ],
      );
    }
    return Container();
  }

  Widget buildSelectViewButton(
      BuildContext context, ListViewLayoutProvider<T> type) {
    if (!type.visible) {
      return Container();
    }

    if (!type.enabled) {
      return Icon(type.selectIcon);
    } else {
      if (_listViewType == type) {
        return Icon(type.selectIcon);
      } else {
        return IconButton(
            onPressed: () => _selectViewType(type),
            icon: Icon(type.selectIcon));
      }
    }

    // if (type == ListViewType.table &&
    //     (widget.tableColumns == null || widget.tableColumns!.isEmpty)) {
    //   return Container();
    // }
    // if (type == ListViewType.tree &&
    //     (widget.hierarchy == null || widget.hierarchy!.isEmpty)) {
    //   return Container();
    // }

    // if (widget.enabledListTypes.contains(type)) {
    //   if (_listViewType == type) {
    //     return Icon(icon);
    //   } else {
    //     return IconButton(
    //         onPressed: () => _selectViewType(type), icon: Icon(icon));
    //   }
    // } else {
    //   return Container();
    // }
  }

  _selectViewType(ListViewLayoutProvider<T> viewType) async {
    if (widget.settingsStorer != null) {
      await widget.settingsStorer!.setGridListViewType(viewType);
    }
    setState(() {
      _listViewType = viewType;
    });
  }
}
