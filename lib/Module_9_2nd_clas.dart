 import 'package:flutter/material.dart';

 import 'package:flutter_screenutil/flutter_screenutil.dart';
class Module9_2ndClas extends StatelessWidget {
  const Module9_2ndClas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emni try'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
             SizedBox(height: 50.h),
            Container(
              height: 200.h,
              width: 300.w,
              color: Colors.yellow,
                       ),


            Text('This is responsive text',
               style: TextStyle(fontSize:30.sp,color: Colors.black)),
            SizedBox( height: 52,),


            FractionallySizedBox(
              widthFactor:0.5 ,
              child: ElevatedButton(onPressed: (){},
                  child: Text('Submit',style:
                  TextStyle(color: Colors.blueGrey),)),
            ) ,
              Container(
                padding: EdgeInsets.all(10),
                margin:EdgeInsets.all(2),
                   decoration:BoxDecoration(
                  border:Border.all
                    (color: Colors.black,width: 2)
                ),
                height: 500,
                child: FractionallySizedBox(
                  heightFactor: 0.2,
                            child: Container(color: Colors.blue,
                child:Center(child:  Text('this is fractional size box')

                            ),
                ),
                ),
              ),

             Row(
               children: [
                 Flexible(
                   flex: 2,
                   child: Container(
                     height: 120,
                     color: Colors.purple,
                   ),
                 ),Flexible(
                   flex: 2,
                   child: Container(
                   height: 120,
                   color: Colors.blueGrey,
                 ),
                 ),
                 Flexible(
                   flex: 1,
                   child: Container(
                     height: 120,
                     color: Colors.black87
                   ),
                 ),
               ],

             ),
             Container(
              height: 100,
               color: Colors.yellow
             ),
          Container(
                   height: 100,
                   color: Colors.black
               ),
             Row(
               children: [
                 Expanded(flex:2, child: ElevatedButton(onPressed: () {}, child:Text('person 1'))),
                 Expanded(child: ElevatedButton(onPressed: () {}, child:Text('person 2'))),
              Expanded(child:ElevatedButton(onPressed: () {}, child:Text('person 3'))),
               ],
             ),
             AspectRatio(
                 aspectRatio:16/9,
               child: Container(
                 color: Colors.orange,
               )
             ),
             AspectRatio(
                 aspectRatio:9/16,
                 child: Container(
                   color: Colors.green,
                 )
             ),
             AspectRatio(
                 aspectRatio:4/3,
                 child: Container(
                   color: Colors.indigo,
                 )
             ),
           ],
        ),
      ),
    );
  }
}
