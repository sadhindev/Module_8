import 'package:flutter/material.dart';

class practics extends StatefulWidget {
  const practics({super.key});

  @override
  State<practics> createState() => _practicsState();
}
class _practicsState extends State<practics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('practices page'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.blue,
          borderRadius:BorderRadius.circular(10),
           boxShadow:[ BoxShadow(color: Colors.blueGrey,
           offset: Offset(4,4),
           blurRadius: 10
             )
          ],
        ),
        alignment: Alignment.center,
        height: 200,
          width: 200,
          child: Column(
            children: [
              Image.network('https://www.shutterstock.com/image-illustration/plastic-bank-card-logo-citibank-260nw-1658508532.jpg'),
              Text("city card",style: TextStyle(fontSize: 30,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
