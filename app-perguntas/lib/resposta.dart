import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() _quandoSelecionado;

  Resposta(this._texto, this._quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(_texto),
        onPressed: _quandoSelecionado,
      ),
    );
  }
}
