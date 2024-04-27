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
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                ContenedorTexto(
                    maxL: 1,
                    posicionText: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.5,
                    heigth: MediaQuery.of(context).size.height * 0.12,
                    text: 'BIENVENIDO',
                    style: temaApp.textTheme.titleMedium,
                    maxF: 140,
                    minF: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContenedorBtn(
                      heigth: 0.3,
                      width: 0.2,
                      rutaImg:
                          'https://images.unsplash.com/photo-1504674900247-0877df9cc836?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxmb29kfGVufDB8fHx8MTcxMjMyMzg0Nnww&ixlib=rb-4.0.3&q=80&width=1080 ',
                      title: 'Productos',
                      onTap: () {
                        Navigator.pushNamed(context, '/inicioProductos');
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    ContenedorBtn(
                      heigth: 0.3,
                      width: 0.2,
                      rutaImg:
                          'https://images.unsplash.com/photo-1588675646184-f5b0b0b0b2de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxvcmRlcnMlN0R8ZW58MHx8fHwxNzEyMzU3MzUzfDA&ixlib=rb-4.0.3&q=80&width=1080',
                      title: 'Pedidos',
                      onTap: () {
                        Navigator.pushNamed(context, '/inicioPedidos');
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
