import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            'assets/images/logo_conversorShow.jpg',
            width: 250,
          )),
    );
  }
}
