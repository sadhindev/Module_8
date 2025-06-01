import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 8,
      //   mainAxisSpacing: 8,
      //   children: List.generate(10, (index) {
      //     return Card(
      //       elevation: 2,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.all(12),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: const [
      //                 Icon(Icons.phone, color: Colors.blue),
      //                 Spacer(),
      //                 Icon(Icons.delete, color: Colors.lime),
      //               ],
      //             ),
      //             const SizedBox(height: 10),
      //             Text('Item ${index + 1}'),
      //           ],
      //         ),
      //       ),
      //     );
      //   }),
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing:20,
          mainAxisSpacing: 25,
        ),
        itemCount: 13,
        itemBuilder: (contex,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone, color: Colors.white),
                  const SizedBox(height: 10,),
                  const Text("Send Money",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          );
        },


      ),
    );
  }
}




