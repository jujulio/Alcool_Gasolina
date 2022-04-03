import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/button.widget.dart';

// ignore: must_be_immutable
class Success extends StatefulWidget {
  var result = '';
  Function reset;

  Success({
    @required this.reset,
    @required this.result,
  });
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Text(
            widget.result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 35,
                fontFamily: 'Big Shoulders Display'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonCalc(
            busy: false,
            func: widget.reset,
            invert: true,
            label: 'CALCULAR NOVAMENTE',
          ),
        ],
      ),
    );
  }
}
