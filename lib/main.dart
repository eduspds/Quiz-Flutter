import 'package:flutter/material.dart';
import 'tela_inicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp( // widget que define a base do app como tema, rota etc
      debugShowCheckedModeBanner: false,
      title: 'Quiz do Universo Marvel',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const TelaInicial(), 
    );
  }
}
