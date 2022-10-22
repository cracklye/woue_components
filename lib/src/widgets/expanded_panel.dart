import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedPanel extends StatefulWidget {
  final List<ExpandedPanelItem> children;
  final int initialOpened;
  const ExpandedPanel(
      {super.key, required this.children, this.initialOpened = 0});

  @override
  State<ExpandedPanel> createState() => _ExpandedPanelState();
}

class _ExpandedPanelState extends State<ExpandedPanel> {
  int indexOpened = 0;

  @override
  void initState() {
    indexOpened = widget.initialOpened;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    for (int i = 0; i < widget.children.length; i++) {
      ExpandedPanelItem item = widget.children[i];
      children.add(GestureDetector(
          onTap: () => setState(() {
                indexOpened = i;
              }),
          child: buildHeader(context, item, i, i == indexOpened)));

      if (indexOpened == i) {
        //children.add(SingleChildScrollView(child: item.content(context)));
        children.add(Expanded(child:item.content(context)));
        children.add(Container());
      }
    }
return Column(
      children: children,
    ); 
    return Expanded(
        child: Column(
      children: children,
    ));
  }

  Widget buildHeader(BuildContext context, ExpandedPanelItem item, int index,
      bool isExpanded) {
    return SizedBox(
        height: 35,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color:const  Color.fromARGB(255, 228, 228, 228),
            // widget.headerBackgroundColor?.resolve(states) ??
            //     backgroundColor(_theme, states),
            border: Border.all(
              width: 2,
              color:const  Color.fromARGB(255, 212, 212, 212), //borderColor(_theme, states),
            ),
            borderRadius: BorderRadius.vertical(
              top: const Radius.circular(4.0),
              bottom: Radius.circular(isExpanded ? 0.0 : 4.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all( 3.0),
            child: item.title(
              context,
              isExpanded,
            ),
          ),
        ));
  }
}

class ExpandedPanelItem {
  final Widget Function(BuildContext context, bool isOpened) title;
  final Widget Function(BuildContext context) content;

  ExpandedPanelItem(this.title, this.content);
}
