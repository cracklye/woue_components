import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/widgets.dart';
import 'package:woue_components/woue_components.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:woue_components_fluent/formfields/fluent_text_formfield.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildHeader("Checkbox"),
        _buildCheckboxtest(context),
        _buildHeader("Chip"),
        _buildChiptest(context),
        _buildHeader("Combo"),
        _buildComboTest(context),
        _buildHeader("Divider"),
        _buildDividerTest(context),
        _buildHeader("Dropdown Button"),
        _buildDropdownButtonTest(context),
        _buildHeader("Elevated Button"),
        _buildElevatedButtonTest(context),
        _buildHeader("Icon Button"),
        _buildIconButtonTest(context),
        _buildHeader("List Tile"),
        _buildListTileTest(context),
        _buildHeader("Selectable Text"),
        _buildSelectableTextTest(context),
        _buildHeader("Slider"),
        _buildSliderTest(context),
        _buildHeader("Subheader"),
        _buildSubheaderTest(context),
        _buildHeader("Text Button"),
        _buildTextButtonTest(context),
        _buildHeader("Textbox"),
        _buildTextBoxTest(context),
        _buildHeader("Textbox Field"),
        _buildTextBoxFieldTest(context),
        _buildHeader("Toggle"),
        _buildToggleTest(context),
        _buildHeader("Linear Progress"),
        _buildLinearProgresstest(context),
        _buildHeader("Circular Progress"),
        _buildCircularProgresstest(context),
      ],
    ));
  }

  Widget _buildTextBoxFieldTest(BuildContext context) {
    return Wrap(children: [
      TextFormField(
        onChanged: (value) =>
            handleMessage("TextBoxField", "onChanged($value)"),
        onSaved: (value) => handleMessage("TextBoxField", "onSaved($value)"),
        onSubmitted: (value) =>
            handleMessage("TextBoxField", "onFieldSubmitted($value)"),
      ),
      FluentFormField(
        onChanged: (value) =>
            handleMessage("TextBoxField", "onChanged($value)"),
        onSaved: (value) => handleMessage("TextBoxField", "onSaved($value)"),
        onSubmitted: (value) =>
            handleMessage("TextBoxField", "onFieldSubmitted($value)"),
      ),

      TextField(
        //focusNode: _focusNode,
        onChanged: (value) => print("onChanged($value)"),
        //onSaved: (value) => print( "onSaved($value)"),

        onSubmitted: (value) {
          print(value);

          // or do whatever you want when you are done editing
          // call your method/print values etc
        },
        //controller: _textController,
      )

      // f.TextBox(onSubmitted: (value) => print("On Submitted $value"),)
    ]);
  }

  Widget _buildListTileTest(BuildContext context) {
    return Wrap(children: [
      ListTile(
        leading: Text("Lead"),
        title: Text("Title"),
        subtitle: Text("Subtitle"),
        trailing: Text("Trailing"),
        onTap: () => handleMessage("ListTile", "Have clicked on the onTap"),
        onLongPress: () =>
            handleMessage("ListTile", "Have clicked on the long press"),
        onDoubleTap: () =>
            handleMessage("ListTile", "Have clicked on the double click"),
      )
    ]);
  }

  Widget _buildSelectableTextTest(BuildContext context) {
    return Wrap(children: [SelectableText("This is the text to select")]);
  }

  Widget _buildSliderTest(BuildContext context) {
    return Wrap(children: [
      Text("Division 5 [1-200]"),
      Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 5,
        onChanged: (p0) => handleMessage("Slider", "onChanged=>$p0"),
      ),
      Text("Division 200 [1-200]"),
      Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 200,
        onChanged: (p0) => handleMessage("Slider", "onChanged=>$p0"),
      ),
      Text("No On Change"),
      Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 200,
      ),
    ]);
  }

  Widget _buildSubheaderTest(BuildContext context) {
    return Wrap(children: [
      SubHeader("The Sub Header"),
      SubHeader("Sub Header with Icon", icon: MdiIcons.danceBallroom),
      SubHeader("Subheader with colour", colorSplash: Color(0xAA440024)),
      SubHeader("Sub Header with Icon and colour",
          icon: MdiIcons.danceBallroom,
          colorSplash: Color.fromARGB(170, 106, 236, 81)),
    ]);
  }

  Widget _buildTextButtonTest(BuildContext context) {
    return Wrap(children: [
      TextButton(child: Text("This is the elevated Button")),
      TextButton(
        child: Text(
          "This is the elevated Button",
        ),
        onPressed: () => handleMessage("ElevatedButton", "on pressed"),
      )
    ]);
  }

  Widget _buildTextBoxTest(BuildContext context) {
    return Wrap(children: [
      TextField(
        placeholder: "placebolder text",
      ),
    ]);
  }

  Widget _buildToggleTest(BuildContext context) {
    return Wrap(children: [
      ToggleSwitch(
          value: true,
          onChanged: ((value) =>
              handleMessage("Toggle", "onChanged=> $value"))),
      ToggleSwitch(
          value: false,
          onChanged: ((value) =>
              handleMessage("Toggle", "onChanged=> $value"))),
    ]);
  }

  Widget _buildElevatedButtonTest(BuildContext context) {
    return Wrap(children: [
      ElevatedButton(child: Text("This is the elevated Button")),
      ElevatedButton(
        child: Text(
          "This is the elevated Button",
        ),
        onPressed: () => handleMessage("ElevatedButton", "on pressed"),
      )
    ]);
  }

  Widget _buildIconButtonTest(BuildContext context) {
    return Wrap(children: [
      IconButton(
        icon: Icon(MdiIcons.accessPointPlus),
        onPressed: () => handleMessage("IconButton", "Icon Button Pressed"),
      ),
      IconButton(icon: Icon(MdiIcons.accessPointPlus))
    ]);
  }

  Widget _buildDividerTest(BuildContext context) {
    return Wrap(children: [Divider()]);
  }

  Widget _buildDropdownButtonTest(BuildContext context) {
    return Wrap(children: [
      DropDownButton(
          title: Text("Title"),
          leading: Text("Leading"),
          trailing: Text("Trailing"),
          items: [
            DropDownItem(
              content: Text(
                "option 3",
              ),
              value: 3,
            ),
            DropDownItem(
              content: Text(
                "option 4",
              ),
              value: 4,
            ),
            DropDownItem(
              content: Text(
                "option 5",
              ),
              value: 5,
            ),
          ],
          onPressed: (e) => handleMessage("DropDownButton", "item clicked=> $e")

          // onChanged: ((value) =>
          //     handleMessage("DropDownButton", "on Changed => $value"))
          ),
      DropDownButton(
          title: Text("Title"),
          leading: Icon(MdiIcons.abjadArabic),
          items: [
            DropDownItem(
              selected: true,
              content: Text(
                "option 3",
              ),
              value: 3,
            ),
            DropDownItem(
              content: Text(
                "option 4",
              ),
              value: 4,
            ),
            DropDownItem(
              content: Text(
                "option 5",
              ),
              value: 5,
            ),
          ],
          onPressed: (e) => handleMessage("DropDownButton", "item clicked=> $e")

          // onChanged: ((value) =>
          //     handleMessage("DropDownButton", "on Changed => $value"))
          )
    ]);
  }

  Widget _buildHeader(String name) {
    return Text(name);
  }

  Widget _buildComboTest(BuildContext context) {
    return Wrap(children: [
      Combo<String>(
        items: [
          ComboEntry(value: "Option 1", child: Text("Option 1")),
          ComboEntry(value: "Option 2", child: Text("Option 2")),
          ComboEntry(value: "Option 3", child: Text("Option 3"))
        ],
      ),
      Combo<String>(
        value: "Option 2",
        items: [
          ComboEntry(value: "Option 1", child: Text("Option 1")),
          ComboEntry(value: "Option 2", child: Text("Option 2")),
          ComboEntry(value: "Option 3", child: Text("Option 3")),
        ],
        onChanged: (p0) => handleMessage("Combo", "onChanged = > $p0"),
      )
    ]);
  }

  Widget _buildCircularProgresstest(BuildContext context) {
    return Wrap(children: [
      CircularProgressIndicator(
        backgroundColor: Color(0xFFFF1010),
        strokeWidth: 10,
        semanticsLabel: "This label",
        semanticsValue: "semantic value",
      ),
      CircularProgressIndicator(),
    ]);
  }

  Widget _buildLinearProgresstest(BuildContext context) {
    return Wrap(children: [
      LinearProgressIndicator(
          backgroundColor: Color(0xFFFF1010),
          minHeight: 20,
          semanticsLabel: "This label",
          semanticsValue: "semantic value"),
      LinearProgressIndicator(),
    ]);
  }

  Widget _buildCheckboxtest(BuildContext context) {
    return Wrap(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) => handleMessage("Checkbox", "new value=> $value"),
        ),
        Checkbox(
          value: false,
          onChanged: (value) => handleMessage("Checkbox", "new value=> $value"),
        ),
      ],
    );
  }

  Widget _buildChiptest(BuildContext context) {
    return Wrap(
      children: [
        Chip(
          label: Text("No Click"),
        ),
        Chip(
            label: Text("Clickable"),
            onDeleted: () => handleMessage("Chip", "Clicable -> OnDeleted")),
        Chip(
          label: Text("Colour"),
          onDeleted: () => handleMessage("Chip", "Colour -> On delete"),
          backgroundColor: Color(0xAA336633),
        ),
        Chip(
          label: Text("Avatar"),
          onDeleted: () => handleMessage("Chip", "Avatar -> OnDeleted"),
          avatar: Icon(MdiIcons.train),
        ),
        Chip(
          label: Text("Delete Tooltip"),
          onDeleted: () => handleMessage("Chip", "Avatar -> OnDeleted"),
          deleteButtonTooltipMessage: "Custom Delete Tooltip Message",
          avatar: Icon(MdiIcons.train),
        )
      ],
    );
  }

  void handleMessage(String component, String message) {
    print('[$component] => $message');
  }
}
