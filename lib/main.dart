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
            SizedBox(
              height: 20,
            ),
            Container(child: Text('Jogada do Computador')),
            Expanded(
              child: Container(
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
            ),
            Container(child: Text('Resultado')),
            Text('Trocar texto aqui'),
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: Column(
              children: [
                Container(child: Text('Placar')),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    height: 100,
                    width: 250,
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
