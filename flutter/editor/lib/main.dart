import 'package:flutter/material.dart';
import 'package:editor/widgets/textfieldeditor.dart';
import 'package:editor/widgets/telaeditor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TelaEditor(key: ValueKey('TelaPrincipal')),
      ),
    );
  }
}
