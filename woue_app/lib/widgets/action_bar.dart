import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woue_app/appbloc/app_bloc.dart';
import 'package:woue_components/woue_components.dart';

class AppButtonBar extends StatelessWidget {
  const AppButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ElevatedButton(
          child: const Text("Fluenet"),
          onPressed: () => BlocProvider.of<AppBloc>(context)
              .add(const AppEventChangeFramework(DesignFrameworkOptions.fluent)),
        ),
         ElevatedButton(
          child: const Text("Material"),
          onPressed: () => BlocProvider.of<AppBloc>(context)
              .add(const AppEventChangeFramework(DesignFrameworkOptions.material)),
        ),
      ],
    );
  }
}
