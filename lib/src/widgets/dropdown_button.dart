import 'package:flutter/widgets.dart';
import 'package:woue_components/src/design_framework.dart';

class DropDownItem<T> {
  final Widget? leading;
  final Widget content;
  final Widget? trailing;
  //final VoidCallback? onPressed;
  final bool selected;
  final T value;
  DropDownItem({
    Key? key,
    required this.value,
    this.leading,
    required this.content,
    this.trailing,
    //required this.onPressed,
    this.selected = false,
  });
}

class DropDownButton<T> extends StatelessWidget {
  const DropDownButton({
    super.key,
//    this.buttonBuilder,
    required this.onPressed,
    required this.items,
    this.leading,
    this.title,
    this.trailing,
    this.verticalOffset = 20.0,
    this.closeAfterClick = true,
    this.disabled = false,
    this.focusNode,
    this.autofocus = false,
    this.placement,
    this.menuShape,
    this.menuColor,
  });

  @override
  Widget build(BuildContext context) {
    return Woue.provider.buildDropdownButton<T>(
      onPressed,
      items,
      leading,
      title,
      trailing,
      verticalOffset,
      closeAfterClick,
      disabled,
      focusNode,
      autofocus,
      placement,
      menuShape,
      menuColor,
    );

    
  }

  final Function(T?) onPressed;

  /// A builder for the button. If null, a [Button] with [leading], [title] and
  /// [trailing] is used.
  ///
  /// If [disabled] is true, [DropDownButtonBuilder.onOpen] will be null
  //final DropDownButtonBuilder? buttonBuilder;

  /// The content at the start of this widget.
  ///
  /// Usually an [Icon]
  final Widget? leading;

  /// Title show a content at the center of this widget.
  ///
  /// Usually a [Text]
  final Widget? title;

  /// Trailing show a content at the right of this widget.
  ///
  /// If null, a chevron_down is displayed.
  final Widget? trailing;

  /// The space between the button and the flyout.
  ///
  /// 20.0 is used by default
  final double verticalOffset;

  /// The items in the flyout. Must not be empty
  final List<DropDownItem> items;

  /// Whether the flyout will be closed after an item is tapped.
  ///
  /// Defaults to `true`
  final bool closeAfterClick;

  /// If `true`, the button won't be clickable.
  final bool disabled;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// The placement of the flyout.
  ///
  /// [FlyoutPlacement.center] is used by default
   // ignore: prefer_typing_uninitialized_variables
  final placement;

  /// The menu shape
  final ShapeBorder? menuShape;

  /// The menu color. If null, [ThemeData.menuColor] is used
  final Color? menuColor;
}
