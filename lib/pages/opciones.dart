import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';

class Opciones extends StatefulWidget {
  const Opciones({super.key});

  @override
  State<Opciones> createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.4,
                  h: MediaQuery.of(context).size.height * 0.1,
                  text: 'BIENVENIDO',
                  style: temaApp.textTheme.titleMedium,
                  maxF: 120,
                  minF: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContenedorBtn(
                    h: 0.3,
                    w: 0.2,
                    op: () {
                      Navigator.pushNamed(context, '/inicioProductos');
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ContenedorBtn(
                    h: 0.3,
                    w: 0.2,
                    op: () {
                      Navigator.pushNamed(context, '/inicioPedidos');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
