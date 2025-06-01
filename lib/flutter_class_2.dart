import 'package:flutter/material.dart';

class flutter_class_2 extends StatelessWidget {
  const flutter_class_2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController  =TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Class two"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body:Center(
        child: SingleChildScrollView(
         child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10)
                    )
                ),
                onPressed: (){
                  print('working button');
                }, child:Text('Button')),
            SizedBox(
                height: 100,
                width: 300,
                child:
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10)
                        )
                    ),
                    onPressed: (){
                      print('working button');
                    }, child:Text('Button'))
            ),

            OutlinedButton(onPressed: (){}, child:Text('out line button')),

            SizedBox(
              height: 50,
              width: 100,),
            GestureDetector(
              onTap: (){
                print('onTap working');
              },
              child: Text('this is text'),
            ),
            SizedBox(
              height: 10,
              width: 20,
            ),


              SizedBox(
                height: 50,
              ),
            Padding(
                padding:const EdgeInsets.only(left:8,right: 10),
                child:TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  // obscureText: true,
              decoration: InputDecoration(
                labelText:'Phone Number',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  
                ),
                hintText: 'Enter your Number',
                border:OutlineInputBorder(
                )
              ),
            ),
            ),
            SizedBox(
              height: 50,
             ),
           ElevatedButton(onPressed: (){
             if(phoneController.text.isEmpty){
               print('please  Inter your correct number');
             }else if(phoneController.text.length < 11){
               print('Please Inter Your Valid  phone number');
             }else{
               print('Your number is  ${phoneController.text}');
             }

           },
               child:Text("Submit",style: TextStyle(color: Colors.deepOrange),)),
            SizedBox(
              height: 55,
            ),
            ElevatedButton(onPressed: (){
              phoneController.clear();
            }, child:Text('Clear')),

            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              height: 200,
              width:150 ,

              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 4,
                      color: Colors.amber
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4,20),
                        blurRadius: 5
                    )
                  ]
              ),
              child:Center(
                child:Column(
                  children: [
                    Text('This is Container',style: TextStyle(
                        color: Colors.purple
                    ),),
                    Text('This is Container',style: TextStyle(
                        color: Colors.white54
                    ),),
                    Text('This is Container'),
                    Text('This is Container'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('Floating Action Button Working ');
      },
        child: Icon(Icons.add),backgroundColor: Colors.blue,),
    );

  }
}