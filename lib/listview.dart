import 'package:flutter/material.dart';

class Listv extends StatelessWidget {
  const Listv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list view practise'),
        backgroundColor: Colors.blue,
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.green
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.grey,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.redAccent
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.lime,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //         height: 200,
      //         width: 50,
      //         color: Colors.green
      //     ),
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.grey,
      //     ),
      //     Container(
      //         height: 200,
      //         width: 50,
      //         color: Colors.redAccent
      //     ),
      //   ],
      // ),
      
      
      body: ListView.builder(
        itemCount:50,
         itemBuilder: (context,index){
          // return  Text('Money can by happiness$index',style: TextStyle(
          //   fontSize: 25,color: Colors.blueGrey
          // ),);
          return Card(
            child: ListTile(
              leading: Icon(Icons.add_a_photo),
              trailing:Icon(Icons.delete),
              title: Text('Money'),
              subtitle: Text('01314258065   $index'),
            ),
          );
        }

      ),
    );
  }
}
