
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
void dispose(){}
}
class _MyAppState extends State<MyApp>
  {
    int _selectedIndex=0;


    Widget build( BuildContext Build){
      final PageController _controller=PageController();
      return MaterialApp(home:Scaffold(floatingActionButton:FloatingActionButton( onPressed: () { setState(() {
        _selectedIndex++;
        _controller.jumpToPage(_selectedIndex);
      }); },child: Icon(Icons.forward),backgroundColor: Colors.green,foregroundColor: Colors.white),body:Container(child:PageView(controller:_controller,onPageChanged:(index){_selectedIndex=index;},children:[
        Container(color: Colors.tealAccent,child: Image.asset('images/WhatsApp Image 2023-02-05 at 12.58.06 PM.jpeg'))
        ,Container(color: Colors.tealAccent,child: Image.asset('images/WhatsApp Image 2023-02-05 at 12.58.07 PM.jpeg')),
        Container(color: Colors.tealAccent,child: Image.asset('images/WhatsApp Image 2023-02-05 at 12.58.07 PM (1).jpeg')),
        Container(color: Colors.tealAccent,child: Image.asset('images/WhatsApp Image 2023-02-05 at 12.58.07 PM (2).jpeg'))],
      ),
      ),));

  }

}