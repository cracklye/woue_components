import 'package:flutter/material.dart';
import 'package:woue_app/widgets/action_bar.dart';
import 'package:woue_app/widgets/test_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          AppButtonBar(),
        ],
      ),
      body: const TestWidget(),
    );
  }
}
