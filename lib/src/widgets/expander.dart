


import 'package:flutter/widgets.dart';

// class ExpandedPanel extends StatelessWidget{
  
//   ExpandedPanel({super.key, required this.items});

//   final List<ExpandedListItem> items; 


//   @override
//   Widget build(BuildContext context) {

//   }






// }

// class ExpandedListItem {
//   final Widget title; 
//   final Widget content; 
  
//   ExpandedItem(this.title, this.content);


// }


// Expander(
//         header: Text('Content Type'),
//         content: SizedBox(
//             height: 150,
//             child: Column(
//               children: [
//                 buildListTile(
//                     "is_map",
//                     () => _addFilter(
//                         context,
//                         FilterField("map_enabled", "mapEnabled", true,
//                             FilterComparison.equals, false, "is Map"))),
//                 buildListTile(
//                     "is_task",
//                     () => _addFilter(
//                         context,
//                         FilterField("task_enabled", "taskEnabled", true,
//                             FilterComparison.equals, false, "is Task"))),
//               ],
//             )));




//             ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//         setState(() {
//           _data[index].isExpanded = !isExpanded;
//         });
//       },
//       children: _data.map<ExpansionPanel>((Item item) {
//         return ExpansionPanel(
//           headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text(item.headerValue),
//             );
//           },
//           body: ListTile(
//               title: Text(item.expandedValue),
//               subtitle:
//                   const Text('To delete this panel, tap the trash can icon'),
//               trailing: const Icon(Icons.delete),
//               onTap: () {
//                 setState(() {
//                   _data.removeWhere((Item currentItem) => item == currentItem);
//                 });
//               }),
//           isExpanded: item.isExpanded,
//         );
//       }).toList(),

