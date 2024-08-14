import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/animated_error.dart';
import 'package:it_lectory_3/widgets/splash.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash' ,
      routes: {
        '/splash': (context)=> SplashScreen(),
        '/er': (context) => PulsatingError(),

      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 137, 201, 1),
        scaffoldBackgroundColor:Color.fromRGBO(21, 21, 21, 1),

      ),
    );
  }
}

