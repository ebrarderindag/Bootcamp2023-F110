import 'package:f110/_LAST_NEW_DESIGN/models/bakicishop.dart';

import 'package:f110/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => BakiciShop(),
  builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PawBuddy',
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.green,
              elevation: 20,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              actionsIconTheme: IconThemeData(color: Colors.black)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
              .copyWith(background: Colors.lightBlue[50])),
      home: const SplashScreen()),
  );
  }
}
