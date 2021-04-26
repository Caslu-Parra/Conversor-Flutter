import 'package:conversor_imc_flutter/src/views/calcimc_view.dart';
import 'package:conversor_imc_flutter/src/views/conversormoeda_view.dart';
import 'package:conversor_imc_flutter/src/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coversor Show',
      // Rota Inicial:
      initialRoute: '/',
      // Rotas do projeto:
      routes: {
        '/': (context) => HomeView(),
        '/conversor_moeda': (context) => ConversorMoeda(),
        '/imc': (context) => CalcIMC(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
