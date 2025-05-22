import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'Texto': 'qual sua cor favorita?',
        'Resposta': ['Azul', 'Amarelo', 'Vermelho', 'Preto']
      },
      {
        'Texto': 'qual seu animal favorito?',
        'Resposta': ['Leão', 'Gato', 'Cachorro', 'Bagre']
      },
      {
        'Texto': 'qual a sua área Asimover favorita?',
        'Resposta': ['Mobile', 'CDD', 'Desktop', 'RH']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
