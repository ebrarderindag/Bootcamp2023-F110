
import 'package:f110/pages/%C4%B0nfopage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'F-110',
      theme: 
      
      ThemeData(
        primarySwatch:Colors.green,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.green,
            elevation: 20,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            actionsIconTheme: IconThemeData(color: Colors.black)
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
              .copyWith(background: Colors.lightBlue[50])),
      home:  const DotIndicatorPage(),
    );
  }
}
