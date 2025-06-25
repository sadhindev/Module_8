import 'package:flutter/material.dart';
class ModuleMedia extends StatefulWidget {
  const ModuleMedia({super.key});

  @override
  State<ModuleMedia> createState() => _ModuleMediaState();
}
class _ModuleMediaState extends State<ModuleMedia> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
      // double  screenWidth= MediaQuery.of(context).size.width;
       double fontSize =screenSize .width > 600 ? 32: 18;
       double pixelRatio =MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
         body:Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                   width: screenSize.width*0.5,
                   height: screenSize.width*0.3,
                   color: Colors.green,
                  ),
                ),
                Text('This is media query text',
                style: TextStyle(fontSize:fontSize ),),
             
                Text('Pixel Ratio :$pixelRatio 1 ')
              ],
            )
    );
  }
}
