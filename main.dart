import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recepie_app/ProfilePage.dart';
import 'package:recepie_app/ReccomendationPage.dart';
import 'package:recepie_app/SplashScreen.dart';

void main() {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
        useMaterial3: true,
      ),
      home:Splashscreen(),
    );
  }
}

List<Categories> category = [
  Categories(
      'assets/images/img_1.png',
      "omkar"),
  Categories(
      'assets/images/img_6.png',
      "name"),
  Categories(
      'assets/images/img_3.png',
      "name"),
  Categories(
      'assets/images/img_4.png',
      "name"),
  Categories(
      'assets/images/img_5.png',
      "name")
];
List<Recommendation> recommend = [
  Recommendation("assets/images/img_7.png","Cream Pasta"),
  Recommendation("assets/images/img_11.png","Missal Paav"),
  Recommendation("assets/images/img_9.png","Kosha Mangsho."),
  Recommendation("assets/images/img_10.png","Puran Poli"),
  Recommendation("assets/images/img_8.png","Cholle Bhature"),
];
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Omkar",style: TextStyle(fontSize: 30),)),
      body:  SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "What would you like",
                        style: TextStyle(fontSize: 43),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: const Text(
                          "to cook today?",
                          style: TextStyle(fontSize: 43),
                        ),
                      )
                    ],
                  ),
                  InkWell(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Profilepage()));
                  },
                    child: CircleAvatar(
                      maxRadius: 39,
                      child:Icon(Icons.person,size: 50,),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: TextField(selectionWidthStyle: BoxWidthStyle.tight,
                  decoration: InputDecoration(hintText:"Search your dish here",
                    suffix: Icon(Icons.search_sharp),
                    fillColor: Colors.red,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                  ),
                )
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 12.0,bottom: 12.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text("See all",style: TextStyle(fontSize:20),),
                  )
                ],
              ),
              SizedBox(
                width: 580,
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: InkWell(onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Splashscreen()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Card(
                              elevation: 10,
                              shadowColor: Colors.black,
                              child: ClipRRect(borderRadius: BorderRadius.circular(18),child:
                              Image.asset(category[index].imageurl))
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 16,bottom: 16),
                    child: Text("Recommendation",style: TextStyle(fontSize: 35),textAlign: TextAlign.start,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text("See all",style: TextStyle(fontSize:20),),
                  )
                ],
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: InkWell(onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Recommendationpage()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.black,
                            color: Colors.black,
                            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(60)),
                            child: Column(
                              children: [
                                Container(width:250,height: 235,child: ClipRRect(borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(recommend[index].imageurl,fit: BoxFit.fill,))),
                                Expanded(child: Text(recommend[index].name,style: TextStyle(color: Colors.white,
                                  fontSize: 25
                                ),))],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 16,bottom: 16),
                    child: Text("Recipies Of The Week",style: TextStyle(fontSize: 35),),
                  ),
                ],
              ),
              Container(
                height: 200,
                child: 
                ListView.builder(scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return Card(
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: 
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.network('https://cdn.dribbble.com/userupload/6719294/file/original-9e6b40e7363229c810f5f2517fcc8a0c.jpg?compress=1&resize=1504x1063')),
                    ),
                  );
                },
                itemCount: recommend.length,),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

class Categories {
  final String imageurl;
  final String name;

  Categories(this.imageurl, this.name);
}
class Recommendation {
  final String imageurl;
  final String name;
  Recommendation(this.imageurl, this.name);
}