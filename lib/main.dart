import 'package:flutter/material.dart';
import 'package:kioskito_gerente/pages/Inicio_Sesion.dart';
import 'package:kioskito_gerente/pages/opciones.dart';
import 'package:kioskito_gerente/pages/pages_productos/historialPedidos.dart';
import 'package:kioskito_gerente/pages/pages_productos/informacionPedido.dart';
import 'package:kioskito_gerente/pages/pages_productos/inicio_pedidos.dart';
import 'package:kioskito_gerente/pages/pages_productos/inicio_productos.dart';
import 'package:kioskito_gerente/pages/pages_productos/pedidosListos.dart';

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
        '/inicioPedidos': (context) => const InicioPedidos(),
        '/pedidosListos': (context) => const PedidosListos(),
        '/informacionPedidos': (context) => const InformacionPedido(),
        '/historialPedidos': (context) => const HistorialPedidos(),
      },
    );
  }
}
