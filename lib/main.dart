import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
       child: Column(children: [
        Container(
        height: 100,
        width: 100,
        color: Colors.yellow[900],
        child: Center(child: Text("go to home",style: TextStyle(color: Colors.blue),),),),
        SizedBox(height: 50,),
        Container(
        height: 100,
        width: 100,
        color: Colors.yellow[900],
        child: Center(child: Text("go to home",style: TextStyle(color: Colors.blue),),),),Container(
        height: 100,
        width: 100,
        color: Colors.yellow[900],
        child: Center(child: Text("go to home",style: TextStyle(color: Colors.blue),),),)],        
       ),       
      ),
    ),
  ));
}