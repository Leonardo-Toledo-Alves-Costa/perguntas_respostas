import 'package:flutter/material.dart';
import './questao.dart';

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
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            )
          ],
        ),
      )
    );
  }

}

class PerguntaApp extends StatefulWidget{
  @override
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}


 
main() => runApp(PerguntaApp());
