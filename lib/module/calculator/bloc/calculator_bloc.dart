import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorInitial()) {
    on<CalculatorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  void onCalculatorEvent(CalculatorEvent event, Emitter<CalculatorState> emit) {
    state(String command) {}
    (event.command);
    return emit(state as CalculatorState);
  }
}
