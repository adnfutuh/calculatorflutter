import 'package:calculator/module/calculator/screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/theme.dart';

import 'module/calculator/state/calculator_bloc/calculator_bloc.dart';
import 'module/calculator/state/cubit/theme_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    runApp(
      MultiBlocProvider(
        providers: [BlocProvider(create: (context) => ThemeCubit())],
        child: const MyApp(),
      ),
    );

    var theme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.isDark ? darkThemeData(context) : lightThemeData(context),
      home: BlocProvider(
        create: (_) => CalculatorBloc(),
        child: const CalculatorScreen(),
      ),
    );
  }
}
