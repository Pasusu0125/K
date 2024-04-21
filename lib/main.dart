import 'package:flutter/material.dart';
import 'package:kioskito_gerente/pages/Inicio_Sesion.dart';
import 'package:kioskito_gerente/pages/opciones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Opciones(),
    );
  }
}