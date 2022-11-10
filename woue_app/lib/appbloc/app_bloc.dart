import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woue_components/woue_components.dart';
import 'package:woue_components_fluent/woue_components_fluent.dart';
import 'package:woue_components_material/material_provider.dart';

class AppState {
  final DesignFrameworkOptions designFramework;
  const AppState(this.designFramework);
}

class AppEvent {
  const AppEvent();
}

class AppEventChangeFramework extends AppEvent {
  final DesignFrameworkOptions designFramework;
  const AppEventChangeFramework(this.designFramework);
}

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc([AppState? initialState])
      : super(initialState ?? const AppState(DesignFrameworkOptions.material)) {
    on<AppEventChangeFramework>(_onNavigateTo);
  }

  void _onNavigateTo(
      AppEventChangeFramework event, Emitter<AppState> emit) async {
    if (event.designFramework != state.designFramework) {
      if (event.designFramework == DesignFrameworkOptions.fluent) {
        Woue.init(FluentProvider());
      } else {
        Woue.init(MaterialProvider());
      }

      emit(AppState(event.designFramework));
    }
  }
}
