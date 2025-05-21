import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String textoResp;
  
  const Resposta(this.textoResp, {super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: null,
              child: Resposta(textoResp),
        );
  }
}