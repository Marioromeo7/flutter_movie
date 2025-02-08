


import 'dart:math';

import 'package:flutter/material.dart';



void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}class _myAppState extends State<myApp>{
  var dice1=Random().nextInt(5);
  var dice2=Random().nextInt(5);
  List choice=['images/WhatsApp Image 2023-02-05 at 12.41.39 PM.jpeg','images/WhatsApp Image 2023-02-05 at 12.41.40 PM.jpeg','images/WhatsApp Image 2023-02-05 at 12.41.40 PM (1).jpeg','images/WhatsApp Image 2023-02-05 at 12.41.40 PM (2).jpeg','images/WhatsApp Image 2023-02-05 at 12.41.41 PM.jpeg','images/WhatsApp Image 2023-02-05 at 12.41.41 PM (1).jpeg'];
  String img1='images/WhatsApp Image 2023-02-05 at 12.41.41 PM (1).jpeg';
  String img2='images/WhatsApp Image 2023-02-05 at 12.41.41 PM (1).jpeg';
  @override
  Widget build(BuildContext context) {

    return MaterialApp( home: Scaffold(appBar: AppBar(title:Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Roll a Dice'),
      ],
    ),backgroundColor: Colors.red,),body:Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center,children: [ Image.asset(img1,),SizedBox(width: 30,), Image.asset(img2)]),const Divider(),ElevatedButton(onPressed: (){{setState(() {img1=choice[dice1];
    img2=choice[dice2];
    });}}, child: const Text('Roll a Dice'))
  ])));}
}







