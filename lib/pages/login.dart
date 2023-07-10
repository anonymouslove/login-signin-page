import 'package:flutter/material.dart';
import 'package:tanny/main.dart';
import 'signPage.dart';
import 'last.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor:Color.fromARGB(255, 223, 217, 217),
 appBar:AppBar(
  backgroundColor: Color.fromARGB(255, 223, 217, 217),
  elevation:0.0,
  leading: IconButton(icon:  const Icon(Icons.arrow_back, color: Colors.black), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> MyApp()));})
  ),
    body: Column(children: [
      
      Padding( padding: EdgeInsets.symmetric(horizontal:40, ),
     child: Text('Sign In', style:TextStyle(fontWeight: FontWeight.bold, fontSize:30)
      )),

     SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 50.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(7)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left:5),
              height: 300,
              width:  300,
              child: TextFormField(decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Username",
              )),
            ),

       ] ),),
      
      SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 50.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(7)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left:5),
              height: 300,
              width:  300,
              child: TextFormField(decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Password",
              )),
            ),

       ] ),),
      
      SizedBox(height: 25,),

      
      
      InkWell(
        onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> LastPage()));},
          child: Container(
 
 margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 50.0,
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
      child:Text('Sign In', style: TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold)), 
 ), ),
     
SizedBox(height:15),
InkWell(
  onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> Sign()));},
child:
Text('New User? Sign up', style: TextStyle(fontSize:16)),),
Padding(padding: EdgeInsets.all(15),
child: Divider(
  thickness: 2,
  color: Colors.grey,
  indent: 16,
  endIndent: 16,
),),

 Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 45.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(7)),
child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          Icon(Icons.g_mobiledata, size:36),
           Text('Continue with Google', style:TextStyle(fontSize:17))

       ] ),),
      
      SizedBox(height: 15),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 45.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          Icon(Icons.facebook),
           Text('Continue with Facebook', style:TextStyle(fontSize:17))

       ] ),),
      
      SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 45.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          Icon(Icons.apple),
           Text('Continue with Apple', style:TextStyle(fontSize:17))

       ] ),),
    ]),// enter text here
    );
  }
}