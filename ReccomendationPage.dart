import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recepie_app/main.dart';

class Recommendationpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,width: 500,
                color: Colors.yellow[300],
                child: Image.network('https://i.pinimg.com/564x/4c/92/80/4c9280980b175cdcdc1b3fbe1ff92336.jpg',fit: BoxFit.fill,),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    width:405,
                    height: 500,
                    child: ClipRRect(borderRadius:BorderRadius.circular(30),child: Image.asset('assets/images/cream_ing.jpg',fit: BoxFit.fill,)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black
                    ),
                  ),
                ),
              ),
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(30),child: Image.asset('assets/images/img.png',fit: BoxFit.fill,)),
                  width: 405,height:525,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black,),
                ),
              )),],
          ),
        ),
      ),
    );
  }
}