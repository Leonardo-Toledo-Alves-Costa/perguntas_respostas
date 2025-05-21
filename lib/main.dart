import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual seu animal favorito?',
      'Qual sua comida preferida?'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AsiPerguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 3'),
            Resposta('Resposta 2')
          ],
        ),
      )
    );
  }

}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}


 
main() => runApp(PerguntaApp());
