import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/components/score.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({Key? key}) : super(key: key);

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
                Score(titulo: 'Você', placar: 'placar'),
                Score(titulo: 'PC', placar: 'placar')
              ],
            ),
          ),
        )
      ],
    ));
  }
}
