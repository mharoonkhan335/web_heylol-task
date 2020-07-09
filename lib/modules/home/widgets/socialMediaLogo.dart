import 'package:flutter/material.dart';

class SocialMediaLogo extends StatelessWidget {
  final String logo;
  SocialMediaLogo(this.logo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Image(image: AssetImage("$logo.png"), height: 35, width: 35, fit: BoxFit.cover,),
    );
  }
}