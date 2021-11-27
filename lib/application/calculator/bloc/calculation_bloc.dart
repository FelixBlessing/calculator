import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculatorBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculatorBloc() : super(CalculationInitial()) {
    on<NumberPressedEvent>((event, emit) {
      

    });
  }
}
