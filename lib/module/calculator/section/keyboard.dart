import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../component/button.dart';
import '../component/calculator_button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb, {super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: 555,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          ButtonRow([
            Button.big(text: 'AC', color: Button.dark, cb: cb),
            Button(text: '%', color: Button.dark, cb: cb),
            Button.operation(text: '/', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
