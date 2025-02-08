

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

void main(){

  runApp(iApp());
}
class iApp extends StatefulWidget{



  @override
  State<iApp> createState()=>hiApp();


}
String s='';
class hiApp extends State<iApp>{
  bool visible1=true;
  bool visible2=true;
  bool visible3=true;
  int  counter= 5 ;
  int c=3 ;
  int count=4;
  List t=[];




  @override
  void initState() {
    rootBundle.loadString('assests/f').then((text){setState(() {
      t=text.split('_');
    });});
    super.initState();
  }
  @override

  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(appBar:AppBar(title: Text('notes'),backgroundColor: Colors.green),backgroundColor: Colors.cyan,body:Container(
      child: ListView( children:[ Visibility(visible: visible1,child: ElevatedButton(onPressed:(){
       setState(() {counter--;
         if(counter==0){visible1=false;
         setState(() {
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('stop')));
         });}
       });}
      , child: Text('${t[0]}\t $counter',textScaleFactor: 20))),SizedBox(height: 300),Visibility(visible: visible2,child: ElevatedButton(onPressed: () {
        setState(() {c--;
         if(c==0){visible2=false;}});setState(() {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('gotit')));
         });
      }, child: Text('${t[1]}\t $c',textScaleFactor: 20))),const SizedBox(height: 300),Visibility(visible: visible3,child: ElevatedButton(onPressed: (){
          setState(() {
            count--;
             if(count==0){visible3=false;setState(() {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('thats enough')));
             });}
          });

        }, child: Text('${t[2]}\t $count',textScaleFactor: 20)))
      ]),
    )));
  }


  }
class message extends StatefulWidget{



  @override
  State<message> createState()=>imessage();


}
class imessage extends State<message>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Text('FIN'),backgroundColor: Colors.red);
  }

}