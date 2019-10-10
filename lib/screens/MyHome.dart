import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //My variables
  var textController = new TextEditingController();
  double e;
  String textToShow = "Hello";
  void convert() {
    double f = double.parse(textController.text);
    e = f / 655.99;
    setState(() {
      textToShow = "$f de FCFA est equivalent à $e d'EURO";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "images/imgh.png",
              width: 150.0,
              height: 150.0,
            ),
          ),
          
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text("Entrez le montant à convertir (en FCFA) dans la boîte puis cliquez sur le boutton valider", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Schyler"),),
          ),
          
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: textController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: InkWell(
              onTap: convert,
              child: Container(
                width: 150.0,
                height: 45.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(
                  child: Text("Valider", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0), child: Text(textToShow, style: TextStyle(color: Colors.black, fontFamily: "Schyler"), textAlign: TextAlign.center,),)
        ],
      ),
    );
  }
}
