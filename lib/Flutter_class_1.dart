import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home page'),
          backgroundColor: Colors.indigoAccent,
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Icon(Icons.access_alarms_rounded ,size: 30,color: Colors.pink,),

              IconButton(onPressed: () {
                print('item working');
              }, icon:Icon(Icons.account_box_sharp)  ),

              TextButton(onPressed: (){
                print('Item working');
              }, child:Text('click Me',style: TextStyle( fontSize: 25,color: Colors.purple),) ),

              Text('This is column',
                style:TextStyle(fontSize:30,color: Colors.cyan),),
              Text('This is column',style:TextStyle(fontSize:30,
                  color: Colors.blue),),
              Text('This is column',
                style:TextStyle(fontSize:30,color: Colors.cyan),),
              Text('This is column',style:TextStyle(fontSize:30,
                  color: Colors.blue),),
              Text('This is column',
                style:TextStyle(fontSize:30,color: Colors.cyan),),
              Text('This is column',style:TextStyle(fontSize:30,
                  color: Colors.blue),),
              Text('This is column',
                style:TextStyle(fontSize:30,color: Colors.cyan),),
              Text('This is column',style:TextStyle(fontSize:30,
                  color: Colors.blue),),
              Text('This is column',
                style:TextStyle(fontSize:30,color: Colors.cyan),),
              Text('This is column',style:TextStyle(fontSize:30,
                  color: Colors.blue),),
            ],
          ),
        )
    );

//         body:SingleChildScrollView(
//        scrollDirection: Axis.horizontal,
//          child: Row(
//         children: [
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.amber),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.green),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.indigoAccent),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.lightGreenAccent),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.redAccent),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.blueGrey),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.purple),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.white54),),
//           SizedBox(
//             width: 25,
//           ),
//           Text('this is a row', style: TextStyle( fontSize:20,color: Colors.black45),),
//         ],
//       ),
//       )
//     );
  }
}