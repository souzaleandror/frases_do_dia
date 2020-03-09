import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = ["Frase1", "Frase2", "Frase3", "Frase4", "Frase5", "Frase6"];
  var _frase = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    int numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frase = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
//          width: double.infinity,
//          padding: EdgeInsets.all(16),
//          decoration: BoxDecoration(
//            border: Border.all(width: 3, color: Colors.amber),
//          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _frase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 17,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
