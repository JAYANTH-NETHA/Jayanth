import 'package:flutter/material.dart';
void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: MyHomePage()
);
}
}
class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Example For Flutter Row :"),

),
body: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children:<Widget>[
Container(
margin: EdgeInsets.all(12.0),
padding: EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:const Color.fromARGB(255, 12, 8, 231)
),
child:
Text("React.js",style: TextStyle(color:const Color.fromARGB(255, 217, 255, 0),fontSize:25),),
),
Container(
margin: EdgeInsets.all(15.0),
padding: EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:const Color.fromARGB(255, 17, 0, 255)
),
child: Text("Flutter",style:
TextStyle(color:Colors.yellowAccent,fontSize:25),),
),
Container(
margin: EdgeInsets.all(12.0),
padding: EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:const Color.fromARGB(255, 0, 17, 255)
),
child: Text("MySQL",style:
TextStyle(color:Colors.yellowAccent,fontSize:25),),
)
]
),
);
}
}