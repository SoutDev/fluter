import 'package:flutter/material.dart';
import 'package:flutter_dev/HomePage.dart';
import 'package:flutter_dev/Register/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade900,
        ),
      ),
      initialRoute: '/', // เส้นทางเริ่มต้น
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
