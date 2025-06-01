import 'package:flutter/material.dart';
import 'package:snaptube/Flutter_class_1.dart';

class Navi extends StatelessWidget {
  final String Name;
  const Navi ({super.key, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Text(Name,style:
                     TextStyle(fontSize:30,color: Colors.amber ),),
                     ElevatedButton(onPressed:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                     }, child:Text('Home') ),
                     SizedBox(
                       height: 50,
                       width: 50,
                     ),
                     ElevatedButton(onPressed:(){
                       Navigator.pop(context);
                     }, child:Text('Back') ),


                   ],
                 )
              )
            ],
          ),
        ),
      )
    );
  }
}
