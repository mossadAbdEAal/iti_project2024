import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customlisttile extends StatelessWidget {
  Customlisttile(
      {super.key,
      required this.iconleading,
      this.icontraling,
      required this.texttitle,
      this.color});
  Icon iconleading;
  Icon? icontraling;
  String texttitle;
  Color? color;


  @override
  Widget build(BuildContext context) {
    return   Card(
      child: ListTile(
        tileColor: Colors.white24,
        iconColor: color,
        leading: iconleading,
        title: Text(
          texttitle,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: icontraling,
        ),
      );
  }
}
