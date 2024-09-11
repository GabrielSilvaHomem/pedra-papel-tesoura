import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  const Score({Key? key, required this.titulo, required this.placar})
      : super(key: key);

  final String titulo;
  final String placar;

  @override
  State createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(widget.titulo), Text(widget.placar)],
    );
  }
}
