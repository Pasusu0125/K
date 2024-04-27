import 'package:flutter/material.dart';
import 'package:kioskito_gerente/pages/inicio_sesion.dart';
import 'package:kioskito_gerente/pages/opciones.dart';
import 'package:kioskito_gerente/pages/pages_productos/historial_pedidos.dart';
import 'package:kioskito_gerente/pages/pages_productos/informacion_pedido.dart';
import 'package:kioskito_gerente/pages/pages_productos/inicio_pedidos.dart';
import 'package:kioskito_gerente/pages/pages_productos/inicio_productos.dart';
import 'package:kioskito_gerente/pages/pages_productos/pedidos_listos.dart';

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
