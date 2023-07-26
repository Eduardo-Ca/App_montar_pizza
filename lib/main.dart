import 'package:flutter/material.dart';
import 'package:montepizza/pizza/presenter/tela_montar_pizza.dart';

void main() {
  runApp(const MontePizzaApp());
}

class MontePizzaApp extends StatelessWidget {
  const MontePizzaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App montar sua pizza',
      theme: ThemeData(
   
        primarySwatch: Colors.red,
      ),
      home: const TelaMontarPizza()
    );
  }
}


