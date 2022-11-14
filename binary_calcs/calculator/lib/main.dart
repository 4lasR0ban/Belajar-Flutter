import 'package:flutter/material.dart';
import 'package:calculator/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFFEEEEEE),
        scaffoldBackgroundColor: const Color(0xFF616161),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFEEEEEE),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: HomePage(),
    );
  }
}
