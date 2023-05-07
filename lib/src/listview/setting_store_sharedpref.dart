

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