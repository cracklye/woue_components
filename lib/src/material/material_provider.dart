import 'package:flutter/material.dart';
import 'package:woue_components/woue_components.dart';

class MaterialProvider extends WoueProvider {
  @override
  Widget buildActionBar(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      primary: Theme.of(context).colorScheme.onPrimary,
    );

    return Row(
        children: primaryItems
            .map<Widget>(
              (item) => TextButton.icon(
                icon: iteicon!,
                label: itelabel,
                onPressed: () => iteonPressed(item),
                style: style,
              ),
            )
            .toList());
  }

  @override
  Widget buildButton(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
    );
  }

  @override
  Widget buildDropdown(BuildContext context) {
    return DropdownButton<T>(
      value: value,
      //icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      // style: const TextStyle(color: Colors.deepPurple),
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: onChanged,
      items: options.map<DropdownMenuItem<T>>((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }

  @override
  Widget buildIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(iconFluent ?? icon!),
      onPressed: onPressed,
    );
  }

  @override
  Widget buildSlider(BuildContext context) {
    return Slider(
      divisions: divisions,
      min: min,
      max: max,
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return Switch(
      onChanged: onChanged,
      value: checked,
    );
  }
}
