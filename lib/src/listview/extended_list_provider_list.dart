import 'package:flutter/widgets.dart';
import 'package:woue_components/src/listview/extended_list_default.dart';
import 'package:woue_components/src/listview/extended_list_provider_grid.dart';
import 'package:woue_components/src/listview/extended_list_view.dart';
import 'package:woue_components/src/widgets/list_tile.dart';

class ListViewLayoutList<T> extends ListViewLayoutDefault<T> {
  ListViewLayoutList(
      {super.enableSearch,
      super.enableSorting,
      super.key = "list_view",
      super.builder, 
      required super.selectIcon});

  @override
  Widget buildContent(BuildContext context, List<T> items, ExtendedListContext<T> listContext) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var item = items[index];
        var isSelected = listContext.isSelected(item);

        if (builder != null) {
          return builder!(context, listContext, item, isSelected);
        }

        return
            // GestureDetector(
            //     key: Key("extended_list_${index}"),
            //     onTap: onTap == null ? null : () => onTap(item),
            //     onDoubleTap: onDoubleTap == null ? null : () => onDoubleTap(item),
            //     onLongPress: onLongTap == null ? null : () => onLongTap(item),
            //     child:
            ListTile(
          selected: isSelected,
          onTap:
              listContext.onTap == null ? null : () => listContext.onTap!(item),
          onDoubleTap: listContext.onDoubleTap == null
              ? null
              : () => listContext.onDoubleTap!(item),
          onLongPress: listContext.onLongTap == null
              ? null
              : () => listContext.onLongTap!(item),
          title: Text(item.toString()),
          //)
        );
      },
      itemCount: items.length,
    );
  }

  // Widget _buildListEntryNoLongTap(BuildContext context, T e) {
  //   //return Text("${e.displayLabel}", key: Key("label_${e.id}"),);
  //   return
  //       // Container(key: Key("extended_list_${e.id}"), child:
  //       GestureDetector(
  //           key: Key("extended_list_${e.id}"),
  //           onTap: widget.onTap == null ? null : () => widget.onTap!(e),
  //           onDoubleTap: widget.onDoubleTap == null
  //               ? null
  //               : () => widget.onDoubleTap!(e),
  //           // onLongPress:
  //           //     widget.onLongTap == null ? null : () => widget.onLongTap!(e),
  //           child: widget.buildListItem == null
  //               ? buildListItemDefault(
  //                   context,
  //                   e,
  //                   widget.onTap == null ? null : () => widget.onTap!(e),
  //                   widget.onDoubleTap == null
  //                       ? null
  //                       : () => widget.onDoubleTap!(e),
  //                   null)
  //               : widget.buildListItem!(
  //                   context,
  //                   e,
  //                   widget.onTap == null ? null : () => widget.onTap!(e),
  //                   widget.onDoubleTap == null
  //                       ? null
  //                       : () => widget.onDoubleTap!(e),
  //                   null));
  // }

  // Widget _buildListEntry(BuildContext context, T e) {
  //   //return Text("${e.displayLabel}", key: Key("label_${e.id}"),);
  //   return
  //       // Container(key: Key("extended_list_${e.id}"), child:
  //       GestureDetector(
  //           key: Key("extended_list_${e.id}"),
  //           onTap: widget.onTap == null ? null : () => widget.onTap!(e),
  //           onDoubleTap: widget.onDoubleTap == null
  //               ? null
  //               : () => widget.onDoubleTap!(e),
  //           onLongPress:
  //               widget.onLongTap == null ? null : () => widget.onLongTap!(e),
  //           child: widget.buildListItem == null
  //               ? buildListItemDefault(
  //                   context,
  //                   e,
  //                   widget.onTap == null ? null : () => widget.onTap!(e),
  //                   widget.onDoubleTap == null
  //                       ? null
  //                       : () => widget.onDoubleTap!(e),
  //                   widget.onLongTap == null
  //                       ? null
  //                       : () => widget.onLongTap!(e),
  //                 )
  //               : widget.buildListItem!(
  //                   context,
  //                   e,
  //                   widget.onTap == null ? null : () => widget.onTap!(e),
  //                   widget.onDoubleTap == null
  //                       ? null
  //                       : () => widget.onDoubleTap!(e),
  //                   widget.onLongTap == null
  //                       ? null
  //                       : () => widget.onLongTap!(e),
  //                 ));
  // }

  // Widget buildListItemDefault(
  //     BuildContext context, T item, onTap, onDoubleTap, onLongPress) {
  //   //   print("List tile $item = ${widget.selected?.first}");

  //   return ListTile(
  //       selected: item == widget.selected?.first,
  //       onTap: onTap,
  //       onDoubleTap: onDoubleTap,
  //       onLongPress: onLongPress,
  //       title: Text(
  //         item.displayLabel,
  //         overflow: TextOverflow.ellipsis,
  //       ),
  //       leading: SizedBox(
  //         width: 2,
  //         child: Container(
  //             color: widget.selected == item
  //                 ? m.Colors.red
  //                 : m.Colors.transparent),
  //       ));
  // }
}
