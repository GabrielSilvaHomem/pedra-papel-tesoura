import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/components/score.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({Key? key, this.placarPc = 0, this.placarUsuario = 0})
      : super(key: key);

  final int placarUsuario;
  final int placarPc;

  @override
  State createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(child: Text('Placar')),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            height: 100,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Score(titulo: 'Você', placar: widget.placarUsuario),
                Score(titulo: 'PC', placar: widget.placarPc)
              ],
            ),
          ),
        )
      ],
    ));
  }
}
