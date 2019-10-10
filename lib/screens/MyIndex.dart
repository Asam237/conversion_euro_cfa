import 'package:conversion_e_c/screens/MyHome.dart';
import 'package:flutter/material.dart';

class MyIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5.0),
        child: Text("Abba Sali - 2019", style: TextStyle(fontFamily: "Schyler"), textAlign: TextAlign.center,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "images/bgimg.png",
              width: 150.0,
              height: 150.0,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              "Convertissez gratuitement des Euro en Franc CFA !",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "Schyler"),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyHome()), (Route route) => false);
            },
            child: Container(
              width: 150.0,
              height: 45.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Center(
                child: Text("Continuer"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
