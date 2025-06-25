import 'package:flutter/material.dart';

class cityCard extends StatelessWidget {
  final String image,city;

  const cityCard({
    super.key, required this.image, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment:Alignment.center,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:Colors.white10,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4,4),
              blurRadius: 10
            )
          ]
        ),
        width: 300,
        child:Column(
          children: [
            Stack( children: [
              Image.network(image),
              Positioned(
                bottom: 10,
                left:10,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                 child: Text(
                    '4,5',
                 style: TextStyle(fontSize: 25,
                 color: Colors.red,
                   fontWeight: FontWeight.bold,
                     ),
                   ),
                ),
              ),
              Positioned(
                bottom: 10,
               right:10,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: Text(city,
                    style: TextStyle(fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ] ),
            Text(city,style:TextStyle(color: Colors.black,fontSize: 25),)
          ],
        )
    );
  }
}
