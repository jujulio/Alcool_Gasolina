import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/logo.widget.dart';
import 'package:flutter_application_1/Widgets/submitForm.dart';
import 'package:flutter_application_1/Widgets/success.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  Color _color = Colors.deepPurple;
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  bool _busy = false;
  bool _completed = false;
  String _resultText = '';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: widget._color,
        child: ListView(
          children: [
            Logo(),
            widget._completed
                ? Success(
                    reset: reset,
                    result: widget._resultText,
                  )
                : SubmitForm(
                    alcCtrl: widget._alcCtrl,
                    gasCtrl: widget._gasCtrl,
                    busy: widget._busy,
                    submit: calculate,
                  )
          ],
        ),
      ),
    );
  }

  Future calculate() async {
    double alc = double.parse(
          widget._alcCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;

    double gas = double.parse(
          widget._gasCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
        ) /
        100;

    double res = alc / gas;

    setState(() {
      widget._color = Colors.deepOrange;
      widget._completed = false;
      widget._busy = true;
    });

    return new Future.delayed(
      const Duration(seconds: 2),
      () => {
        setState(() {
          if (res >= 0.7) {
            widget._resultText = 'Compensa utilizar Gasolina';
          } else {
            widget._resultText = 'Compensa utilizar Álcool';
          }
          widget._completed = true;
          widget._busy = false;
        })
      },
    );
  }

  reset() {
    setState(() {
       widget._color = Colors.deepPurple;
      widget._alcCtrl = new MoneyMaskedTextController();
      widget._gasCtrl = new MoneyMaskedTextController();
      widget._busy = false;
      widget._completed = false;
    });
  }
}
