import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculatorBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculatorBloc() : super(CalculationInitial()) {
    String number = "";
    on<NumberPressedEvent>((event, emit){
      number = number + event.number;
      emit(CalculationInputState(number: number));

    }
    );
    on<ClearPressedEvent>((event, emit){
      number = "";
      emit(CalculationInputState(number: number));
    }
    );
  }
}
