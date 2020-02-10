import 'package:flutter/material.dart';
void main ()=> runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.purple,
      scaffoldBackgroundColor: Colors.purple[600],


      ),
      home: HomePage(),
    
    );
    
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  alignment: Alignment.center,
  children: <Widget>[
    Container(//image here 

      width:400,
      height:600,
child: Image.asset("assets/image.png",fit: BoxFit.contain,),
    ),
  Positioned( // for text at position
    
    child: Text("Todos",
    style: TextStyle(color:Colors.white,fontSize:40,fontStyle: FontStyle.normal ,fontWeight: FontWeight.bold),
    ),
    top: 50,
    left: 20,
    ),
DraggableScrollableSheet(
  maxChildSize: 0.85, //make it scrollable 
  builder:(BuildContext context, ScrollController scollcontroller){ // to build content and scrollable
    return Stack(
          children:<Widget>[
 Container(  
        // for the scroll sheet look
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight:Radius.circular(40),topLeft: Radius.circular(40)),
        ),
        child: ListView.builder(
          itemBuilder:(context ,index) //index way to identify task
           {

            return ListTile(
              title: Text("Task No $index",style: TextStyle(color:Colors.grey[900],fontWeight: FontWeight.bold),),
              subtitle: Text("This is the details of your Task No $index",style: TextStyle(color:Colors.grey[900]),) ,
              trailing: Icon(Icons.check_circle,color:Colors.greenAccent), //just to display anything after text
              isThreeLine: true,

            );
          
          },
         controller: scollcontroller,
         itemCount: 20,
          ),
      ),
          ],
    ); 
  }
),
          
  ],
),
);
  }
}