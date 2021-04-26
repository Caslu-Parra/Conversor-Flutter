import 'package:conversor_imc_flutter/src/views/components/espacamento_h.dart';
import 'package:conversor_imc_flutter/src/views/components/espacamento_w.dart';
import 'package:conversor_imc_flutter/src/views/components/titulo2.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalcIMC extends StatefulWidget {
  @override
  _CalcIMCState createState() => _CalcIMCState();
}

class _CalcIMCState extends State<CalcIMC> {
  num peso = 0;
  num altura = 0;
  num imc = 0;
  var texto = "Resultado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                EspacamentoH(h: 20),
                Image.asset(
                  'assets/images/icon_imc.png',
                  width: 200,
                  height: 200,
                ),
                // Container de espaçamento:
                EspacamentoH(h: 20),
                Titulo2(txt: "Calculadora IMC:"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Peso:
                    Expanded(
                        flex: 1,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Peso'),
                          onChanged: (value) {
                            // print(value);
                            setState(() {
                              // Var que recebe o novo valor da conversão:
                              peso = num.parse(value) ?? 0.00;
                            });
                          },
                        )),
                    // Container de espaçamento:
                    EspacamentoW(w: 10),
                    // Altura
                    Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Altura'),
                        onChanged: (value) {
                          // print(value);
                          setState(() {
                            // Var que recebe o novo valor da conversão:
                            altura = num.parse(value) ?? 0.00;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    top: 8,
                    right: 4,
                    bottom: 4,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          // print(value);
                          setState(() {
                            // Var que recebe o novo valor da conversão:
                            imc = peso ~/ pow(altura, 2);

                            print("imc = $imc");
                            print("altura = $altura");
                            print("peso = $peso");

                            if (imc <
                                17) //Condicional para resultado do calculo do IMC
                            {
                              texto = "Muito abaixo do peso";
                            } else if (imc > 17 && imc < 18.49) {
                              texto = "Abaixo do Peso";
                            } else if (imc > 18.5 && imc < 24.99) {
                              texto = "Peso normal";
                            } else if (imc > 25 && imc < 29.99) {
                              texto = "Acima do peso";
                            } else if (imc > 30 && imc < 34.99) {
                              texto = "Obesidade 1";
                            } else if (imc > 35 && imc < 39.99) {
                              texto = "Obesidade 2";
                            } else if (imc > 40) {
                              texto = "Obesidade 3";
                            }
                          });
                        },
                        child: Text("Calcular")),
                  ),
                ),
                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelText: texto),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
