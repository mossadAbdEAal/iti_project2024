import 'package:flutter/material.dart';
import 'package:iti_project/models/onboarding_model.dart';

// ignore: must_be_immutable
class Customonboardingwidget extends StatelessWidget {
  Customonboardingwidget({super.key, required this.pageitem});
  Onboardingmodel pageitem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              pageitem.urlimage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 90,),
            Center(
                child: Text(
              pageitem.title,
              maxLines: 2,
              style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),
            )),
            const SizedBox(height: 15,),
            Center(
                child: Text( 
              pageitem.subtitle,
              maxLines: 2,
              style: const TextStyle(fontSize: 17,color: Colors.grey,overflow: TextOverflow.ellipsis),
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
