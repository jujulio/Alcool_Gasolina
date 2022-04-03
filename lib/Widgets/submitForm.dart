import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/button.widget.dart';
import 'package:flutter_application_1/Widgets/input.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class SubmitForm extends StatefulWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submit;

  SubmitForm({
    @required this.alcCtrl,
    @required this.gasCtrl,
    @required this.busy,
    @required this.submit,
  });
  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Inputs(
            label: 'Gasolina',
            ctrl: widget.gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Inputs(
            label: 'Álcool',
            ctrl: widget.alcCtrl,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ButtonCalc(
          busy: widget.busy,
          func: widget.submit,
          invert: false,
          label: 'CALCULAR',
        ),
      ],
    );
  }
}
