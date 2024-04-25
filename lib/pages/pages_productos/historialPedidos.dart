import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/objects.dart';
import 'package:kioskito_gerente/structure/tablas.dart';

class HistorialPedidos extends StatefulWidget {
  const HistorialPedidos({super.key});

  @override
  State<HistorialPedidos> createState() => _HistorialPedidos();
}

class _HistorialPedidos extends State<HistorialPedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.8,
                  h: MediaQuery.of(context).size.height * 0.1,
                  text: 'Historial Pedidos',
                  style: temaApp.textTheme.titleMedium,
                  maxF: 182,
                  minF: 20,
                  posicionText: Alignment.center,
                  maxL: 1),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: TableWidget(
                  columns: const [
                    'Id',
                    'Fecha',
                    'Nombre usuario',
                    'Más Información'
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
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: const AutoSizeText(
                              '20/05/2024',
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
                        Navigator.pushNamed(context, '/inicioPedidos');
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
