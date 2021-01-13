import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 4},
        {'texto': 'Vermelho', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Coelho', 'pontuacao': 7},
        {'texto': 'Gato', 'pontuacao': 2},
        {'texto': 'Girafa', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': [
        {'texto': 'João', 'pontuacao': 10},
        {'texto': 'Marcelo', 'pontuacao': 5},
        {'texto': 'Léo', 'pontuacao': 1},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Center(child: Text('Perguntas'))),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              quandoResponder: _responder,
              perguntaSelecionada: _perguntaSelecionada,
            )
          : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
