import 'package:flutter/material.dart';
import 'package:iti_project/constraints/constraints.dart';

class CustomSplashWidget extends StatelessWidget{
  const CustomSplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(kurllogo),
      ),
    );
  }

}