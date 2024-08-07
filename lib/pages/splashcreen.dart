import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_lectory_copy_2/pages/onboard_1.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
    child:  Image.asset('assets/images/Loggo.png', fit: BoxFit.contain,),)
    );
  }

  _goHome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnBoard1()),
    );
  }
}
