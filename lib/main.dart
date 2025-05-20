import 'package:flutter/material.dart';

class PerguntaApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual seu animal favorito?',
      'Qual sua comida preferida?'
    ];

    void responder(){
      return print('Pergunta respondida, vamos para a próxima!');
    }


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Programa AsiPerguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            Text(perguntas[1]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            Text(perguntas[2]),
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

main() => runApp(new PerguntaApp());
