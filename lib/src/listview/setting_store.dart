import 'package:woue_components/src/listview/extended_list_default.dart';

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