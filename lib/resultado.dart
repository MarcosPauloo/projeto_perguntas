import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final Function() quandoReiniciarQuestionario;
  const Resultado(
      {required this.pontuacao, required this.quandoReiniciarQuestionario});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    String texto = fraseResultado;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            texto,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
