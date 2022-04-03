import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class Inputs extends StatefulWidget {
  var ctrl = new MoneyMaskedTextController();
  var label = '';

  Inputs({@required this.label, @required this.ctrl});

  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            widget.label,
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: 'Big Shoulders Display'),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: widget.ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Big Shoulders Display'),
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
