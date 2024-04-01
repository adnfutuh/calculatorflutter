import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromARGB(255, 145, 145, 145);
  static const defaultColor = Color.fromARGB(255, 40, 40, 40);
  static const operationColor = Color.fromARGB(255, 13, 203, 250);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    super.key,
    required this.text,
    this.big = false,
    this.color = defaultColor,
    required this.cb,
  });

  const Button.big({
    super.key,
    required this.text,
    this.big = true,
    this.color = defaultColor,
    required this.cb,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.big = false,
    this.color = operationColor,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: GlassContainer(
        blur: 1,
        color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.blue.withOpacity(0.3),
          ],
        ),
        border: const Border.fromBorderSide(BorderSide.none),
        shadowStrength: 3,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(16),
        shadowColor: Colors.white.withOpacity(0.24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
          onPressed: () => cb(text),
        ),
      ),
    );
  }
}
