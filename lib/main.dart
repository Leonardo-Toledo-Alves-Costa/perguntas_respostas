import 'package:flutter/material.dart';

class PerguntaApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Programa AsiPerguntas"),
        ),
        body: Text("Protótipo do AsiPerguntas") ,
      )
    );
  }

}

main() => runApp(new PerguntaApp());
