import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

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
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text('Sua Jogada')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Pedra',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Papel',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Tesoura',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Text('Jogada do Computador')),
            Container(
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              margin: EdgeInsets.all(10),
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Computador',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text('Resultado')),
            Text('Trocar texto aqui'),
            Expanded(
                child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                    child: Text('Placar')),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  width: 250,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Você'), Text('5')],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('PC'), Text('2')],
                      ),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
