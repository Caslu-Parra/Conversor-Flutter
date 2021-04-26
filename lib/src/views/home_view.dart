import 'package:conversor_imc_flutter/src/views/calcimc_view.dart';
import 'package:conversor_imc_flutter/src/views/components/drawer.dart';
import 'package:conversor_imc_flutter/src/views/components/espacamento_h.dart';
import 'package:conversor_imc_flutter/src/views/components/logo.dart';
import 'package:conversor_imc_flutter/src/views/components/titulo2.dart';
import 'package:conversor_imc_flutter/src/views/conversormoeda_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerInicio(),
        appBar: AppBar(
          title: Text("Conversor Show"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  EspacamentoH(
                    h: 20,
                  ),
                  Titulo2(
                    txt: 'Conversor Show',
                  ),
                  EspacamentoH(
                    h: 10,
                  ),
                  Text(
                      'Bem-vindo(a) ao Conversor show! Abra o drawer e escolha a calculadora que deseja abrir!')
                ],
              ),
            ),
          ),
        ));
  }
}
