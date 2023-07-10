import 'package:flutter/material.dart';
import 'pages/signPage.dart';
import 'pages/slider.dart';
void main() {

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: MyApp(),
      )
  );}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Column(children: [
      Padding(padding: EdgeInsetsDirectional.symmetric(vertical:35.0,),),
      Padding(
 padding: EdgeInsets.only(right: 250.0, ),

      child: Text.rich(
        TextSpan(
    text: 'sit',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
    children: <TextSpan>[

      TextSpan(
        text: 'tle.',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
      ),

    ],
  ),
),
      ),

  Container(
    padding:EdgeInsets.all(50),
    alignment: Alignment.center,
    child:Image.asset('tanny/tanny1.png')),

    Text('Getting started is easy', style:TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
    SizedBox(height:20),
    Text("Just create an account. Yeah, that's all!", style:TextStyle(fontSize:20,)),
    SizedBox(height:50),

InkWell(
  onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context)=> HomePage()));},

 child:Container(
  height:50,
width:300,
  alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child:Text('Get started', style: TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold)), 
 ), ),
        ],)// add code above
    );
  }
}