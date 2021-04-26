import 'package:flutter/material.dart';

class DrawerInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          child: Text(
            'Menu de Opções',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_drawer.jpg'),
                fit: BoxFit.cover),
            color: Colors.pink,
          ),
        ),
        ListTile(
          leading: Icon(Icons.attach_money),
          title: Text('Conversor de Moeda'),
          subtitle: Text('Converta real para USD, EUR e BTC!'),
          onTap: () {
            Navigator.pushNamed(context, '/conversor_moeda');
          },
        ),
        ListTile(
          leading: Icon(Icons.fitness_center),
          title: Text('Calculadora IMC'),
          subtitle: Text('Informe seu peso e altura e descubra seu IMC'),
          onTap: () {
            Navigator.pushNamed(context, '/imc');
          },
        )
      ],
    ));
  }
}
