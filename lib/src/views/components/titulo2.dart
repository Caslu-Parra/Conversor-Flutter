import 'package:flutter/cupertino.dart';

class Titulo2 extends StatelessWidget {
  final String txt;

  const Titulo2({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
