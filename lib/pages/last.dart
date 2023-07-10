import 'package:flutter/material.dart';
import 'package:tanny/main.dart';
class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar:AppBar(
  backgroundColor: Color.fromARGB(255, 223, 217, 217),
  elevation:0.0,
  leading: IconButton(icon:  const Icon(Icons.arrow_back, color: Colors.black), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> MyApp()));})
  ),
    body:
  Stack(
  children: [
   Text('ju'),
    Positioned(
      bottom: 0,
      right: 0,
      child: Image.asset('tanny/tanny1.png'),
    ),
  ],
)

);


    
  }
}