import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woue_app/appbloc/app_bloc.dart';
import 'package:woue_app/fluent/fluent_app.dart';
import 'package:woue_app/material/material_app.dart';
import 'package:woue_components/woue_components.dart';
import 'package:woue_components_material/material_provider.dart';

void main() {
  Woue.init(const MaterialProvider());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: buildApp(context),
    );
  }

  Widget buildApp(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: ((context, state) {
      if (state.designFramework == DesignFrameworkOptions.fluent) {
        return const AppFluent();
      }
      return const AppMaterial();
    }));
  }
}
