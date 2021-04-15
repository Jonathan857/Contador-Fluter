import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 40);
  int contador =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Contador Fluter y regreso a 0'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de Clicks', style: estiloTexto),
              Text('$contador', style: estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _botones(),
      ),
    );
  }
  Widget _botones(){
     return Row(
       children:<Widget> [
        SizedBox(width: 20,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: cero),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: disminuir),
        SizedBox(width: 5,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: aumentar)
      ],
    );
  }
    void cero(){
    setState(()=>{contador = 0});
  }
  void disminuir(){
    setState(()=>{contador--});
  }
  void aumentar(){
    setState(()=>{contador++});
  }
}