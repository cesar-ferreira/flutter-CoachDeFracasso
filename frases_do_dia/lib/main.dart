import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Coach de Fracassos",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    'POR MAIS QUE O CAMINHO SEJA LONGO... A DERROTA É CERTA.',
    'QUERER É SOFRER.',
    'A PRÁTICA LEDA À FRUSTAÇÃO.',
    'ACORDE CEDO PARA SE ATRASAR COM CALMA.',
    'NÃO TENHA MEDO DO FRACASSO. TENHA COSTUME.',
    'VOCÊ NÃO PODE MUDAR O SEU PASSADO. MAS PODE ESTRAGAR O SEU FUTURO. ',
    'PERSISTIR NUNCA. DESISTIR SEMPRE.',
    'É FAZENDO MERDA QUE SE ADUBA A VIDA.',
    'NUNCA MENOSPREZE O PIOR.',
    'NADA COMO UM DIA PIOR DO QUE O OUTRO.',
    'COISAS RUINS SE VÃO PARA QUE PIORES POSSAM VIR.'
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase() {

    var numeroRandomico = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[numeroRandomico];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coach de Fracasso"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(

          padding: EdgeInsets.all(8),
          width: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Image.asset("images/coach.jpg"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              RaisedButton(
                color: Colors.lightBlue,
                onPressed: _gerarFrase,
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
