import 'package:conversion_e_c/screens/MyHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyTrans extends StatelessWidget {
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
              "images/imgh.png",
              width: 150.0,
              height: 150.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(left:20.0, right: 20.0), child: Text("Convert Pro", style: TextStyle(fontFamily: "Schyler", fontWeight: FontWeight.bold, fontSize: 25.0), textAlign: TextAlign.center,),),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
            },
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                height: 45.0,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "Conversion CFA - EURO",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: Padding(
              padding: EdgeInsets.only(left:20.0, right: 20.0),
              child: Container(
                height: 45.0,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "Conversion EURO - CFA",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
