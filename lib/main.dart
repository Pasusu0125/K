import 'package:flutter/material.dart';
import 'package:kioskito_gerente/pages/Inicio_Sesion.dart';
import 'package:kioskito_gerente/pages/opciones.dart';
import 'package:kioskito_gerente/pages/pages_productos/inicio_productos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioSesion(),
        '/opciones': (context) => const Opciones(),
        '/inicioProductos': (context) => const InicioProductos(),
        '/inicioPedidos': (context) => const InicioProductos(),
      },
    );
  }
}
