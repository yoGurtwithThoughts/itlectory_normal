import 'package:flutter/material.dart';
import 'package:it_lectory_3/pages/home_teachers.dart';
import 'package:it_lectory_3/pages/onboard_1.dart';
import 'package:it_lectory_3/pages/page_register.dart';
import 'package:it_lectory_3/widgets/animated_error.dart';
import 'package:it_lectory_3/widgets/authrise_switch_widget.dart';
import 'package:it_lectory_3/widgets/sign_up.dart';
import 'package:it_lectory_3/widgets/splash.dart';
import 'package:it_lectory_3/widgets/teacher_signIn.dart';



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
        '/th' : (context)=> THome(),
        '/onb1': (context)=> OnBoard1(),
        '/sg' : (context) => SignUpWidget(),
        '/pagt' : (context) => RegisterPage(),
        '/logs' :(context) => LoginWidget(),
        '/sgt': (context)=> TeacherIn(),

      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 137, 201, 1),
        scaffoldBackgroundColor:Color.fromRGBO(21, 21, 21, 1),

      ),
    );
  }
}

