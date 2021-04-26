import 'package:flutter/material.dart';

class EspacamentoW extends StatelessWidget {
  final double w;

  const EspacamentoW({Key key, this.w}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
    );
  }
}
