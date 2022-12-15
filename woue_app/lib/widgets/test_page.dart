import 'package:flutter/widgets.dart';
import 'package:loggy/loggy.dart';
import 'package:woue_components/woue_components.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:woue_components_fluent/formfields/fluent_text_formfield.dart';

class TestWidget extends StatelessWidget with UiLoggy {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildHeader("Attachments"),
        _buildAttachments(context),
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

  Widget _buildAttachments(BuildContext context) {
    return Wrap(children: [
      const SizedBox(
        height: 200,
        width: 200,
        child: AttachmentSelect(),
      ),
      SizedBox(
        height: 200,
        width: 200,
        child: AttachmentSelect(
          selected: AttachmentInfo(
              path:
                  "C:\\Users\\meshuser\\Pictures\\2021_08_25_Chris Headshot 0072-tedit.jpg"),
        ),
      ),
      const SizedBox(
        height: 200,
        width: 700,
        child: AttachmentSelect(
          multiSelect: true,
        ),
      ),
      SizedBox(
        //height: 100,
        width: 700,
        child: AttachmentSelect(
          multiSelect: true,
          selected: AttachmentInfo(
              path: "C:\\Users\\meshuser\\Pictures\\temp_search.png"),
        ),
      ),
    ]);
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
        onChanged: (value) => loggy.debug("onChanged($value)"),
        //onSaved: (value) => print( "onSaved($value)"),

        onSubmitted: (value) {
          loggy.debug(value);

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
        leading: const Text("Lead"),
        title: const Text("Title"),
        subtitle: const Text("Subtitle"),
        trailing: const Text("Trailing"),
        onTap: () => handleMessage("ListTile", "Have clicked on the onTap"),
        onLongPress: () =>
            handleMessage("ListTile", "Have clicked on the long press"),
        onDoubleTap: () =>
            handleMessage("ListTile", "Have clicked on the double click"),
      )
    ]);
  }

  Widget _buildSelectableTextTest(BuildContext context) {
    return Wrap(children: const [SelectableText("This is the text to select")]);
  }

  Widget _buildSliderTest(BuildContext context) {
    return Wrap(children: [
      const Text("Division 5 [1-200]"),
      Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 5,
        onChanged: (p0) => handleMessage("Slider", "onChanged=>$p0"),
      ),
      const Text("Division 200 [1-200]"),
      Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 200,
        onChanged: (p0) => handleMessage("Slider", "onChanged=>$p0"),
      ),
      const Text("No On Change"),
      const Slider(
        value: 40,
        min: 1,
        max: 200,
        divisions: 200,
      ),
    ]);
  }

  Widget _buildSubheaderTest(BuildContext context) {
    return Wrap(children: const [
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
      const TextButton(child: Text("This is the elevated Button")),
      TextButton(
        child: const Text(
          "This is the elevated Button",
        ),
        onPressed: () => handleMessage("ElevatedButton", "on pressed"),
      )
    ]);
  }

  Widget _buildTextBoxTest(BuildContext context) {
    return Wrap(children: const [
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
      const ElevatedButton(child: Text("This is the elevated Button")),
      ElevatedButton(
        child: const Text(
          "This is the elevated Button",
        ),
        onPressed: () => handleMessage("ElevatedButton", "on pressed"),
      )
    ]);
  }

  Widget _buildIconButtonTest(BuildContext context) {
    return Wrap(children: [
      IconButton(
        icon: const Icon(MdiIcons.accessPointPlus),
        onPressed: () => handleMessage("IconButton", "Icon Button Pressed"),
      ),
      const IconButton(icon: Icon(MdiIcons.accessPointPlus))
    ]);
  }

  Widget _buildDividerTest(BuildContext context) {
    return Wrap(children: const [Divider()]);
  }

  Widget _buildDropdownButtonTest(BuildContext context) {
    return Wrap(children: [
      DropDownButton(
          title: const Text("Title"),
          leading: const Text("Leading"),
          trailing: const Text("Trailing"),
          items: [
            DropDownItem(
              content: const Text(
                "option 3",
              ),
              value: 3,
            ),
            DropDownItem(
              content: const Text(
                "option 4",
              ),
              value: 4,
            ),
            DropDownItem(
              content: const Text(
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
          title: const Text("Title"),
          leading: const Icon(MdiIcons.abjadArabic),
          items: [
            DropDownItem(
              selected: true,
              content: const Text(
                "option 3",
              ),
              value: 3,
            ),
            DropDownItem(
              content: const Text(
                "option 4",
              ),
              value: 4,
            ),
            DropDownItem(
              content: const Text(
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
          ComboEntry(value: "Option 1", child: const Text("Option 1")),
          ComboEntry(value: "Option 2", child: const Text("Option 2")),
          ComboEntry(value: "Option 3", child: const Text("Option 3"))
        ],
      ),
      Combo<String>(
        value: "Option 2",
        items: [
          ComboEntry(value: "Option 1", child: const Text("Option 1")),
          ComboEntry(value: "Option 2", child: const Text("Option 2")),
          ComboEntry(value: "Option 3", child: const Text("Option 3")),
        ],
        onChanged: (p0) => handleMessage("Combo", "onChanged = > $p0"),
      )
    ]);
  }

  Widget _buildCircularProgresstest(BuildContext context) {
    return Wrap(children: const [
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
    return Wrap(children: const [
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
        const Chip(
          label: Text("No Click"),
        ),
        Chip(
            label: const Text("Clickable"),
            onDeleted: () => handleMessage("Chip", "Clicable -> OnDeleted")),
        Chip(
          label: const Text("Colour"),
          onDeleted: () => handleMessage("Chip", "Colour -> On delete"),
          backgroundColor: const Color(0xAA336633),
        ),
        Chip(
          label: const Text("Avatar"),
          onDeleted: () => handleMessage("Chip", "Avatar -> OnDeleted"),
          avatar: const Icon(MdiIcons.train),
        ),
        Chip(
          label: const Text("Delete Tooltip"),
          onDeleted: () => handleMessage("Chip", "Avatar -> OnDeleted"),
          deleteButtonTooltipMessage: "Custom Delete Tooltip Message",
          avatar: const Icon(MdiIcons.train),
        )
      ],
    );
  }

  void handleMessage(String component, String message) {
    loggy.info('[$component] => $message');
  }
}
