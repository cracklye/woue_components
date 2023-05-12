import 'package:fluent_ui/fluent_ui.dart' hide Page;
import 'package:woue_app/widgets/action_bar.dart';
import 'package:woue_app/widgets/test_extendedlist.dart';
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
          glowFactor: is10footScreen(context) ? 2.0 : 0.0,
        ),
      ),
      // initialRoute: '/',
      // routes: {'/': (context) => MyHomePage()},
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {

  int _index= 0; 

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        title: Text("Windows App"),
      ),
      pane: NavigationPane(
          displayMode: PaneDisplayMode.auto,
          selected: () {
            return _index;
          }(),
          items: [
            PaneItemHeader(header: const Text('Inputs')),
            PaneItem(
               onTap: () => setState(() {
                _index = 0; 
              }),
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
              onTap: () => setState(() {
                _index = 1; 
              }),
              icon: const Icon(FluentIcons.button_control),
              title: const Text('Low!'),
              body: const ScaffoldPage(
                header: Text(
                  "Sample Page 2",
                  style: TextStyle(fontSize: 60),
                ),
                content: AppButtonBar(),
              ),
            ), PaneItem(
              onTap: () => setState(() {
                _index = 2; 
              }),
              icon: const Icon(FluentIcons.button_control),
              title: const Text('Extended List'),
              body: const ScaffoldPage(
                header: Text(
                  "Test Extended List",
                  style: TextStyle(fontSize: 60),
                ),
                content: TestExtendedList(),
              ),
            ),
          ]),
    );
  }
}
