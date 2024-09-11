import 'dart:html';

import 'package:flutter/material.dart';

class Moves extends StatefulWidget {
  const Moves({Key? key, this.imagem = 'images/ponto de interrogação.png'})
      : super(key: key);

  final String imagem;

  @override
  State createState() => _MovesState();
}

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
        icon: Image.asset((widget.imagem.isEmpty)
            ? 'images/ponto de interrogação.png'
            : widget.imagem),
        onPressed: () {},
      ),
    ));
  }
}
