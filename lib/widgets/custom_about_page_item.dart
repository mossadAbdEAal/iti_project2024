import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAboutPageItem extends StatelessWidget {
  CustomAboutPageItem(
      {super.key, required this.texttitle, required this.textsubtitle});
  String texttitle;
  String textsubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            texttitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                maxLines: 12,
                textsubtitle,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
