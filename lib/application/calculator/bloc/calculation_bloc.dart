import 'package:bloc/bloc.dart';
import 'package:calculator/application/calculator/logic.dart';
import 'package:meta/meta.dart';

part 'calculation_event.dart';
part 'calculation_state.dart';

class CalculatorBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculatorBloc() : super(CalculationInitial()) {
    String number = "";
    String number1 = "";
    String number2 = "";
    String operator = "";
    Logic calculator;
    on<NumberPressedEvent>((event, emit){
      if(operator!="" && number == operator){
        number = event.number;
        emit(CalculationInputState(number: number));

      }
      else{
        number += event.number;
        emit(CalculationInputState(number: number));
      }

    }
    );
    on<ClearPressedEvent>((event, emit){
      number = "";
      number1 = "";
      number2 = "";
      operator = "";
      emit(CalculationInputState(number: number));
    }
    );

    on<OperatorPressedEvent>((event, emit){
      operator = event.operator;
      number1 = number;
      number = operator;
      emit(CalculationInputState(number: number));
    });

    on<ResultPressedEvent>((event, emit){
      calculator = Logic();
      number2 = number;
      number = calculator.calculate(number1, number2, operator);
      emit(CalculationInputState(number: number));
    }
    );
  }
}
