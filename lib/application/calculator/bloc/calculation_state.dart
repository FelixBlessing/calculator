part of 'calculation_bloc.dart';

@immutable
abstract class CalculationState {}

class CalculationInitial extends CalculationState {}

class SolutionCalculatetState extends CalculationState{}

class CalculatorInputState extends CalculationState{}
