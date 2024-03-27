part of 'calculator_bloc.dart';

class CalculatorEvent extends Equatable {
  const CalculatorEvent({required this.command});
  final String command;

  @override
  List<Object> get props => [];
}
