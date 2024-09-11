import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/components/moves.dart';
import 'package:pedrapapeltesoura/components/scoreboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

int itemPosition = 0;

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedra, Papel e Tesoura'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(child: Text('Sua Jogada')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Moves(imagem: 'images/pedra.png'),
                Moves(imagem: 'images/papel.png'),
                Moves(imagem: 'images/tesoura.png')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(child: Text('Jogada do Computador')),
            Moves(imagem: ''),
            Container(child: Text('Resultado')),
            Text('Trocar texto aqui'),
            SizedBox(
              height: 50,
            ),
            Scoreboard()
          ],
        ),
      ),
    );
  }
}
