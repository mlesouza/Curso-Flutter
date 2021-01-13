import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String _texto;

  Questao(this._texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        _texto,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
