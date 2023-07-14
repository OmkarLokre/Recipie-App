import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recepie_app/main.dart';

class Profilepage extends StatefulWidget{
  @override
  State<Profilepage> createState() => _ProfilepageState();
}
List<ProfileInfo> profile=[
  ProfileInfo("Your Membership","Free montly recipie book,Free 5 continental dishes",""),
  ProfileInfo("My Account","Favourites and Settings",""),
  ProfileInfo("Payments and Refunds","Refund Status and Payment mode",""),
  ProfileInfo("Swaad Money","View Account Balance & transaction history",""),
  ProfileInfo("Swaad Updates","Update to the latest version to never miss out on new dishes",""),
  ProfileInfo("Help","FAQs & Links",""),
  ProfileInfo("Add Recipies","Add your own Recipies and earn swaad Gun",""),
];

class _ProfilepageState extends State<Profilepage> {
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.pink,),
               child:
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 55.0,right: 240),
                        child: Text(textAlign: TextAlign.start,"Omkar Lokre",
                          style: TextStyle(color: Colors.white,fontSize: 30),),
                      ),
                      Divider(color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 120),
                        child: Text(textAlign: TextAlign.start,"91-8454077889  |  omkarlokre10@gmail.com",
                          style: TextStyle(color: Colors.white,fontSize: 15),),
                      ),
                    ],
                  ), ),

              ),
              SingleChildScrollView(
                child: Expanded(
                  child: Container(height: 750,width:450,decoration: BoxDecoration(
                  ),
                    child: ListView.separated(scrollDirection: Axis.vertical,
                        itemBuilder: (context,index){
                      return ListTile(
                        leading: Icon(Icons.emoji_food_beverage),
                        title: Text(profile[index].opt),
                        subtitle: Text(profile[index].descrpt),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      );
                    }, separatorBuilder: (context,index){
                      return Divider(color: Colors.black,height: 100,thickness:5,);
                    }, itemCount: profile.length
                    ),
                  ),
                ),
              )],
          ),
        ),
      ),
    );
  }
}
class ProfileInfo{

  String opt;
  String descrpt;
  String icon;

   ProfileInfo(this.opt,this.descrpt,this.icon);
}