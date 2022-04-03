import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonCalc extends StatefulWidget {
  var label = '';
  var busy = false;
  var invert = false;

  Function func;

  ButtonCalc({
    @required this.label,
    @required this.busy,
    @required this.invert,
    @required this.func,
  });

  @override
  _ButtonCalcState createState() => _ButtonCalcState();
}

class _ButtonCalcState extends State<ButtonCalc> {
  @override
  Widget build(BuildContext context) {
    return widget.busy
        ? Container(
            alignment: Alignment.center,
            height: 40,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: widget.invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(70),
            ),
            child: TextButton(
              child: Text(
                widget.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget.invert
                        ? Colors.white.withOpacity(0.8)
                        : Theme.of(context).primaryColor,
                    fontFamily: 'Big Shoulders Display',
                    fontSize: 30),
              ),
              onPressed: widget.func,
            ),
          );
  }
}
