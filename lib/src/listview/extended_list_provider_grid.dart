import 'package:flutter/widgets.dart';
import 'package:woue_components/src/listview/extended_list_default.dart';
import 'package:woue_components/src/listview/extended_list_view.dart';

class ListViewLayoutGrid<T> extends ListViewLayoutDefault<T> {
  ListViewLayoutGrid(
      {super.enableSearch,
      super.enableSorting,
      super.key = "list_grid",
      super.builder, 
      required super.selectIcon})
      : super(
            getSizeParameters: () =>
                SizeParameters(7, 2, (value) => value.toString()));
  @override
  Widget buildContent(
      BuildContext context, List<T> items, ExtendedListContext<T> listContext) {
    return GridView.count(
      crossAxisCount: 5,
      // shrinkWrap: true,
      children: items
          .map((e) => buildGridItemDefault(context, e, listContext))
          .toList(),
    );
  }

  Widget buildGridItemDefault(
      BuildContext context, T item, ExtendedListContext<T> listContext) {
    var isSelected = listContext.isSelected(item);

    if (builder != null) {
      return builder!(context, listContext, item, isSelected);
    }

    return GestureDetector(
        onTap:
            listContext.onTap == null ? null : () => listContext.onTap!(item),
        onDoubleTap: listContext.onDoubleTap == null
            ? null
            : () => listContext.onDoubleTap!(item),
        onLongPress: listContext.onLongTap == null
            ? null
            : () => listContext.onLongTap!(item),
        child: Text(
          item.toString(),
          softWrap: true,
          //overflow: TextOverflow.Wrap,
        ));
  }
}
