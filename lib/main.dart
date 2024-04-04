import 'package:calculator/module/calculator/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/theme.dart';

import 'module/calculator/blocs/calculator_bloc/calculator_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: _iconBool ? lightThemeData(context) : darkThemeData(context),

      home: BlocProvider(
        create: (_) => CalculatorBloc(),
        child: const CalculatorScreen(),
      ),
    );
  }
}
