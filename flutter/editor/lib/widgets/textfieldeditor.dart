import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldEditor extends StatefulWidget {
  const TextFieldEditor({super.key});

  @override
  State<TextFieldEditor> createState() => _YellowBirdState();
}

class _YellowBirdState extends State<TextFieldEditor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}
