import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as m;
import 'package:woue_components/src/design_framework.dart';

Future<void> showDialog({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  Offset? anchorPoint,
}) {
  return Woue.provider.buildShowDialog(
      context: context,
      builder: builder,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      anchorPoint: anchorPoint,
      routeSettings: routeSettings);
}

class ContentDialog extends StatelessWidget {
  const ContentDialog({
    super.key,
    this.title,
    this.content,
    this.actions,
    this.style,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Woue.provider
        .buildContentDialog(title, content, actions, style, constraints);
  }

  /// The title of the dialog. Usually, a [Text] widget
  final Widget? title;

  /// The content of the dialog. Usually, a [Text] widget
  final Widget? content;

  /// The actions of the dialog. Usually, a List of [Button]s
  final List<Widget>? actions;

  /// The style used by this dialog. If non-null, it's merged with
  /// [ThemeData.dialogTheme]
  final style;

  /// The constraints of the dialog. It defaults to `BoxConstraints(maxWidth: 368)`
  final BoxConstraints? constraints;
}
