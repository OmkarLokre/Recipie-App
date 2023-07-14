import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recepie_app/main.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              child: Card(
                elevation: 80,
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(60)),
                child: ClipRRect(borderRadius:BorderRadius.circular(25),
                    child: Image.asset('assets/images/img_12.png',fit: BoxFit.fill,)),
              ),
              width: 300,
              height: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),)
            ),
          ),

        ),
      ),
    );
  }
}