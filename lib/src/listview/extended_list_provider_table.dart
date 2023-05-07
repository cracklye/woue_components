import 'package:woue_components/src/listview/extended_list_default.dart';

class ListViewLayoutTable<T >
    extends ListViewLayoutDefault<T> {
  ListViewLayoutTable(
      {super.enableSearch,
      super.enableSorting,
      super.key = "list_table",
      required super.selectIcon});
}
