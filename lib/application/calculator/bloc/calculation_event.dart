part of 'calculation_bloc.dart';

@immutable
abstract class CalculationEvent {}

class NumberPressedEvent extends CalculationEvent{
  final String number;
  NumberPressedEvent({required this.number});

}

class OperatorPressedEvent extends CalculationEvent{
  final String operator;
  OperatorPressedEvent({required this.operator});
}

class ResultPressedEvent extends CalculationEvent{}

class ClearPressedEvent extends CalculationEvent{}
