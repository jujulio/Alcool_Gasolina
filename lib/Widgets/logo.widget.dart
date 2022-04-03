import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          child: Image.asset('assets/images/aog-white.png', height: 110),
        ),
        Text(
          'Álcool ou Gasolina',
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Big Shoulders Display'),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
