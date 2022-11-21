import 'package:fluent_ui/fluent_ui.dart' hide Page;
import 'package:woue_app/widgets/action_bar.dart';
import 'package:woue_app/widgets/test_page.dart';
// import 'package:system_theme/system_theme.dart';
// import 'package:url_launcher/link.dart';
// import 'package:url_strategy/url_strategy.dart';
// import 'package:window_manager/window_manager.dart';

const String appTitle = 'Fluent UI Showcase for Flutter';

class AppFluent extends StatelessWidget {
  const AppFluent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   visualDensity: VisualDensity.standard,
      //   focusTheme: FocusThemeData(
      //     glowFactor: is10footScreen() ? 2.0 : 0.0,
      //   ),
      // ),
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen() ? 2.0 : 0.0,
        ),
      ),
      // initialRoute: '/',
      // routes: {'/': (context) => MyHomePage()},
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text("Windows App"),
      ),
      pane: NavigationPane(
          displayMode: PaneDisplayMode.auto,
          selected: () {
            return 0;
          }(),
          items: [
            PaneItemHeader(header: const Text('Inputs')),
            PaneItem(
              icon: const Icon(FluentIcons.button_control),
              title: const Text('Hi!'),
              body: const ScaffoldPage(
                header: Text(
                  "Sample Page 1",
                  style: TextStyle(fontSize: 60),
                ),
                content: TestWidget(),
                bottomBar: AppButtonBar(),
              ),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.button_control),
              title: const Text('Low!'),
              body: const ScaffoldPage(
                header: Text(
                  "Sample Page 2",
                  style: TextStyle(fontSize: 60),
                ),
                content: AppButtonBar(),
              ),
            ),
          ]),
    );
  }
}
