import 'package:clone_layout/src/screens/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: 
            BottomSheetThemeData(backgroundColor: Colors.transparent)),
      home: SplashPage(),
    );
  }
}

