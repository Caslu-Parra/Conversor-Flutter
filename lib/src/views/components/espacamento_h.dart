import 'dart:ffi';

import 'package:flutter/material.dart';

class EspacamentoH extends StatelessWidget {
  final double h;

  const EspacamentoH({Key key, this.h}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
    );
  }
}
