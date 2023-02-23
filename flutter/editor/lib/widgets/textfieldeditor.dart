import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldEditor extends StatefulWidget {
  const TextFieldEditor({super.key});

  @override
  State<TextFieldEditor> createState() => _State();
}

double x = 0;
double y = 0;

class _State extends State<TextFieldEditor> {
  TextEditingController _textController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    //
    //
    var decoracaoContainer = BoxDecoration(
      color: Color.fromRGBO(200, 200, 200, 0.80),
      border: Border.all(
        color: const Color.fromARGB(192, 51, 51, 51),
        width: 4.0,
      ),
    );
    //
    //
    InputDecoration decorationText = const InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 219, 250, 108),
          width: 10,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 206, 30, 97),
          width: 1,
        ),
      ),
    );
    //
    //

    return Positioned(
      top: y,
      left: x,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            x = details.globalPosition.dx;
            y = details.globalPosition.dy;
          });
        },
        child: Container(
          padding: EdgeInsets.all(4.0),
          decoration: decoracaoContainer,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 20,
                color: Color.fromARGB(255, 34, 108, 43),
              ),
              //Expanded(
              //child:
              SizedBox(
                width: 400,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(fontFamily: 'Courier New'),
                  maxLines: null,
                  decoration: decorationText,
                ),
              ),
              //),
              /*Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(fontFamily: 'Courier New'),
                  maxLines: null,
                  decoration: decorationText,
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
