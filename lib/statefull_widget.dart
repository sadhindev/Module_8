import 'package:flutter/material.dart';
import 'package:snaptube/widget/cityCard.dart';

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
        backgroundColor: Colors.indigoAccent,
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
                    width:180 ,
                    child:ElevatedButton(onPressed: (){
                      setState(() {
                        counter--;
                      });
                      print('counter:$counter');
                    }, child:Text('-',
                      style: TextStyle(fontSize: 50,color: Colors.green),) )),
              ],
            ),
            SizedBox(
              height: 50,
               ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn1qTbcTEeQj6FrEKaa7IHd_5zwaiwdHqJCw&s', city: 'Bangladesh',),
                  SizedBox(width: 10),
                  cityCard(image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/d4/8f/11/tajhat-palace-front-right.jpg?w=1400&h=1400&s=1', city: 'Rangpur',),
                  SizedBox(width: 10),
                  cityCard(image: 'https://t3.ftcdn.net/jpg/05/27/07/26/360_F_527072634_v3176DmiDEVAPLbOkfa1OuUSgrURpfuV.jpg', city: 'Thakurgaon',),
                  SizedBox(width: 10),
                  cityCard(image: 'https://cdn.dhakapost.com/media/imgAll/BG/2023June/dinajpur-20230615131601.jpg', city: 'Dinajpur',),
                  SizedBox(width: 10),
                  cityCard(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-8Nv9UawlFMOt9PjZN2FXDQTgdbA6P0ULMw&s', city: 'Nilpamari',),
                  SizedBox(width: 10),
                  cityCard(image: 'https://tds-images.thedailystar.net/sites/default/files/styles/big_202/public/images/2023/12/04/mostafa_shabuj_main.jpeg', city: 'Panchagarh',),
                  SizedBox(width: 10),
              
                ],
              ),
            )
          ],
        ),
      ),
    ) ;

  }
}


