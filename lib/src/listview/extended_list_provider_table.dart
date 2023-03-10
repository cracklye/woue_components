import 'package:flutter/widgets.dart';
import 'package:woue_components/src/listview/extended_list_default.dart';
import 'package:woue_components/src/listview/extended_list_provider_grid.dart';
import 'package:woue_components/src/listview/extended_list_view.dart';

class ListViewLayoutTable<T >
    extends ListViewLayoutDefault<T> {
  ListViewLayoutTable(
      {super.enableSearch,
      super.enableSorting,
      super.key = "list_table",
      required super.selectIcon});
}
