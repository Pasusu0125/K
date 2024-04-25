import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/objects.dart';
import 'package:kioskito_gerente/structure/tablas.dart';

class InicioPedidos extends StatefulWidget {
  const InicioPedidos({super.key});

  @override
  State<InicioPedidos> createState() => _InicioPedidosState();
}

class _InicioPedidosState extends State<InicioPedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          children: [
            ContenedorTexto(
              maxL: 1,
              posicionText: Alignment.center,
              w: MediaQuery.of(context).size.width * 0.5,
              h: MediaQuery.of(context).size.height * 0.1,
              text: 'Pedido en Espera',
              maxF: 140,
              minF: 20,
              style: temaApp.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Btn1(
                    w: MediaQuery.of(context).size.width * 0.1,
                    h: MediaQuery.of(context).size.height * 0.05,
                    op: () {
                      Navigator.pushNamed(context, '/pedidosListos');
                    },
                    child: const TextoBotones(text: 'Pedidos listos'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Btn1(
                    w: MediaQuery.of(context).size.width * 0.1,
                    h: MediaQuery.of(context).size.height * 0.05,
                    op: () {
                      Navigator.pushNamed(context, '/historialPedidos');
                    },
                    child: const TextoBotones(text: 'Historial de pedidos'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: TableWidget(
                columns: const [
                  'Id',
                  'Nombre Usuario',
                  'Más Informacion',
                  'Aprobar ',
                  'Rechazar',
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 18,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: 220,
                          child: const AutoSizeText(
                            'Natalia Daniela Martínez Córdoba',
                            minFontSize: 14,
                            maxFontSize: 18,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          child: BtnIconoInfo(
                            op: () {
                              Navigator.pushNamed(
                                  context, '/informacionPedidos');
                            },
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          child: BtnIconoAprobar(
                            op: () {},
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          child: BtnIconoRechazar(
                            op: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  right: MediaQuery.of(context).size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Btn1(
                    w: MediaQuery.of(context).size.width * 0.1,
                    h: MediaQuery.of(context).size.height * 0.05,
                    child: const TextoBotones(text: 'Volver'),
                    op: () {
                      Navigator.pushNamed(context, '/opciones');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
