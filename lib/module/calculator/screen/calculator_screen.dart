import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:calculator/theme.dart';
import '../state/calculator_bloc/calculator_bloc.dart';
import '../section/display.dart';
import '../section/keyboard.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  _onPressed(String command) {
    setState(() {
      context.read<CalculatorBloc>().add(CalculatorEvent(command: command));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.fill,
        )),
        child: GlassContainer(
          color: kBlackColor,
          child: Column(
            children: <Widget>[
              BlocBuilder<CalculatorBloc, CalculatorState>(
                  builder: (__, state) {
                return Display(state.value);
              }),
              Keyboard(_onPressed),
            ],
          ),
        ),
      ),
    );
  }
}
