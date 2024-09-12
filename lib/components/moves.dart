import 'dart:html';

import 'package:flutter/material.dart';

class Moves extends StatefulWidget {
  const Moves(
      {Key? key,
      this.imagem = 'images/ponto de interrogação.png',
      required this.callback,
      required this.isPc})
      : super(key: key);

  final String imagem;
  final bool isPc;
  final Function callback;

  @override
  State createState() => _MovesState();
}

bool estaVisivel = true;

class _MovesState extends State<Moves> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      margin: EdgeInsets.all(10),
      width: 100,
      height: 100,
      child: IconButton(
        icon: AnimatedOpacity(
          opacity: estaVisivel ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Image.asset((widget.imagem.isEmpty)
              ? 'images/ponto de interrogação.png'
              : 'images/' + widget.imagem + '.png'),
        ),
        onPressed: () {
          if (widget.isPc) {
            return;
          }
          widget.callback(widget.imagem);
        },
      ),
    ));
  }
}
