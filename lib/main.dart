import 'package:flutter/material.dart';
import 'package:it_lectory_copy_2/widgets/splash.dart';

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

      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 137, 201, 1),
        scaffoldBackgroundColor:Color.fromRGBO(21, 21, 21, 1),

      ),
    );
  }
}