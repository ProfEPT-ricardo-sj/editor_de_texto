import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:editor/widgets/textfieldeditor.dart';

class TelaEditor extends StatefulWidget {
  const TelaEditor({required Key key}) : super(key: key);

  @override
  State<TelaEditor> createState() => _State();
}

class _State extends State<TelaEditor> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[
        TextFieldEditor(),
        TextFieldEditor(),
      ],
    );
  }
}
