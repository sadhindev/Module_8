
import 'package:flutter/material.dart';
// import 'package:snaptube/statefull_practics.dart';
// import 'package:snaptube/statefull_widget.dart';
//  import 'flutter_class_2.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'from_login.dart';
   import 'Module_9_2nd_clas.dart';
   import 'Module_9_mediaQuary.dart';
import 'module_9_class_3.dart';
import 'module_9todo.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override

  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const Module9Class3(),
    );
  }
}

