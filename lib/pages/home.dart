import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/components/moves.dart';
import 'package:pedrapapeltesoura/components/scoreboard.dart';
import "dart:math";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

List jogadas = ['pedra', 'papel', 'tesoura'];
String jogadaPc = '';
String jogadaUsuario = '';
String resultado = '';
int placarUsuario = 0;
int placarPc = 0;

class _HomePageState extends State {
  acaoComputador(usuarioValor) {
    setState(() {
      final numero = new Random();

      jogadaUsuario = usuarioValor;
      jogadaPc = jogadas[numero.nextInt(3)];
      var ganhador;

      if (jogadaPc == jogadaUsuario) {
        ganhador = 'Empate';
      } else if ((jogadaPc == 'papel' && jogadaUsuario == 'pedra') ||
          (jogadaPc == 'pedra' && jogadaUsuario == 'papel')) {
        ganhador = 'papel';
      } else if ((jogadaPc == 'pedra' && jogadaUsuario == 'tesoura') ||
          (jogadaPc == 'tesoura' && jogadaUsuario == 'pedra')) {
        ganhador = 'pedra';
      } else if ((jogadaPc == 'tesoura' && jogadaUsuario == 'papel') ||
          (jogadaPc == 'papel' && jogadaUsuario == 'tesoura')) {
        ganhador = 'tesoura';
      }

      if (ganhador == 'Empate') {
        resultado = 'Empate!';
      } else if (jogadaUsuario == ganhador) {
        resultado = 'Você ganhou!';
        placarUsuario++;
      } else {
        resultado = 'O computador ganhou!';
        placarPc++;
      }
    });
  }

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
                Moves(
                  imagem: 'pedra',
                  callback: acaoComputador,
                  isPc: false,
                ),
                Moves(imagem: 'papel', callback: acaoComputador, isPc: false),
                Moves(
                  imagem: 'tesoura',
                  callback: acaoComputador,
                  isPc: false,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(child: Text('Jogada do Computador')),
            Moves(imagem: jogadaPc, callback: acaoComputador, isPc: true),
            Container(child: Text('Resultado')),
            Text(resultado),
            SizedBox(
              height: 50,
            ),
            Scoreboard(placarUsuario: placarUsuario, placarPc: placarPc)
          ],
        ),
      ),
    );
  }
}
