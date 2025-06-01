import 'package:flutter/material.dart';

import 'Flutter_class_1.dart';
import 'Gridview.dart';
import 'Navi.dart';
import 'listview.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final _formkey =GlobalKey<FormState>();
  TextEditingController phoneController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:Center(

        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           children: [
             // Image.asset('assets/life.png',height: 200,width: 500,),
             Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/640px-Google_2015_logo.svg.png',height: 250,width: 350,),
              
             Text('Login With Your Phone And Password',style: TextStyle(color: Colors.purple),),
             SizedBox(
               height: 30,
             ),
             Form( key: _formkey,
                 child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

               children: [
                 Text('Phone Number'),
                 TextFormField(
                   controller: phoneController,
                   decoration: InputDecoration(
                     hintText:'Phone Number',
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                         )
                   ),
                   validator: (value){
                     if (value == null || value.isEmpty ){
                       return 'Please Inter your Phone number';
                     }
                     else{
                       return null;
                     }
                   }
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Text('Password'),
                 TextFormField(
                   
                   controller: passwordController,
                     decoration: InputDecoration(
                         hintText:'Password',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)
                         )
                     ),
                     validator: (value){
                       if (value == null || value.isEmpty ){
                         return 'Please Inter your Password ';
                       } else if(value.length < 6) {
                         return 'password must be at least 6 characters';
                       }
                       else{
                         return null;
                       }
                     }
                 ),
                 SizedBox(
                   height: 26,
                 ),
                 SizedBox(width: 220,
                   child: ElevatedButton(onPressed: (){
                if ( _formkey.currentState!.validate()){
               ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Login Successful'))
                   );
                }
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> Navi(Name: phoneController.text,)));
                   }, child:Text('Login',)
                   )
                 ),

                 ElevatedButton(onPressed: (){
             Navigator.push(
               context,
              MaterialPageRoute(builder: (context) => Listv()),
                );
               }, child: Text('Listv')),
                 ElevatedButton(onPressed: (){  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Grid()),
                 );}, child: Text('Grid'))

               ],
             ))
           ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed:(){
          print('floating Action Button working ');
        },child:Icon(Icons.add) ,backgroundColor: Colors.green, ),
    );
  }
}

