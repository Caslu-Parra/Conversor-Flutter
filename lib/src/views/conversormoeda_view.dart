import 'package:conversor_imc_flutter/src/views/components/drawer.dart';
import 'package:conversor_imc_flutter/src/views/components/espacamento_h.dart';
import 'package:conversor_imc_flutter/src/views/components/espacamento_w.dart';
import 'package:conversor_imc_flutter/src/views/components/titulo2.dart';
import 'package:flutter/material.dart';

class ConversorMoeda extends StatefulWidget {
  @override
  _ConversorMoedaState createState() => _ConversorMoedaState();
}

class _ConversorMoedaState extends State<ConversorMoeda> {
  // Variável de controle do dropdown
  String moeda = 'USD';

  // Varíaveis de valor das moedas:
  double usd = 5.60;
  double eur = 6.70;
  double btc = 320156.14;
  
  // Variável de controle do campo de resultado:
  var resultado = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerInicio(),
      appBar: AppBar(
        title: Text('Conversor de Moeda'),
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
                  'assets/images/icon_conversor.png',
                  width: 200,
                  height: 200,
                ),
                // Container de espaçamento:
                EspacamentoH(h: 20),
                Titulo2(txt: "Conversor de Moeda:"),
                // Campo de entrada de moeda:
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Valor em R\$',
                  ),
                  onChanged: (value) {
                    // print(value);
                    setState((){
                      // Var que recebe o novo valor da conversão:
                      var valorNovo;
                      var real = double.tryParse(value) ?? 0.00;
                      if (moeda == 'USD') {
                        valorNovo = real / usd;
                      } else if (moeda == 'EUR'){
                        valorNovo = real / eur;
                      } else if (moeda == 'BTC'){
                        valorNovo = real / btc;
                      }
                      // Atribuir resultado no campo de resultado:
                      resultado.text = valorNovo.toStringAsFixed(2);
                      print(valorNovo);
                    });
                  },
                ),
                // Linha com os campos de resultado:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Dropdown:
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 56,
                          // Item do dropdown:
                          child: DropdownButton(
                            value: moeda,
                            isExpanded: true,
                            iconEnabledColor: Colors.pink,
                            underline: Container(
                              height: 1,
                              color: Colors.pink,
                            ),
                            items: [
                              DropdownMenuItem(
                                value: 'USD',
                                child: Text('USD'),
                              ),
                              DropdownMenuItem(
                                  value: 'EUR', child: Text('EUR')),
                              DropdownMenuItem(
                                  value: 'BTC', child: Text('BTC')),
                            ],
                            onChanged: (value) {
                              setState((){
                                moeda = value.toString();
                              });
                            },
                          ),
                        )),
                    // Container de espaçamento:
                    EspacamentoW(w: 10),
                    // TextField
                    Expanded(
                      flex: 2,
                      child: TextField(
                        enabled: false,
                        controller: resultado,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
