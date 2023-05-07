import 'package:woue_components/src/listview/extended_list_default.dart';

class ListViewLayoutSortable<T> extends ListViewLayoutDefault<T> {
  ListViewLayoutSortable(
      {super.enableSearch,
      super.enableSorting,
      super.key = "list_sortable",
      required super.selectIcon});
}
