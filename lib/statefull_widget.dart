import 'package:flutter/material.dart';

class state_full extends StatefulWidget {
  const state_full({super.key});

  @override
  State<state_full> createState() => _state_fullState();
   }
class _state_fullState extends State<state_full> {
int counter =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('statefull'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(),style:
            TextStyle(fontSize: 70,color:
            Colors.black87),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:180 ,
                    child:ElevatedButton(onPressed: (){

                      setState(() {
                        counter++;
                      });
                      print('counter:$counter');
                    }, child:Text('+',
                      style: TextStyle(fontSize: 50,color: Colors.green),) )),
                  SizedBox(
                   width: 50,
                   ),
                SizedBox(
                    width:180 ,
                    child:ElevatedButton(onPressed: (){
                      setState(() {
                        counter--;
                      });

                      print('counter:$counter');
                    }, child:Text('-',
                      style: TextStyle(fontSize: 50,color: Colors.green),) )),
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}
