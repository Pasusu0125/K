import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/objects.dart';
import 'package:kioskito_gerente/structure/tablas.dart';

class InformacionPedido extends StatefulWidget {
  const InformacionPedido({super.key});

  @override
  State<InformacionPedido> createState() => _InformacionPedidoState();
}

class _InformacionPedidoState extends State<InformacionPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.15,
              text: 'Información de Pedido',
              maxF: 180,
              minF: 40,
              posicionText: Alignment.center,
              maxL: 1,
              style: temaApp.textTheme.titleMedium,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: TableWidget(
                columns: const [
                  'Id',
                  'Nombre usuario',
                  'Nombre pedido',
                  'Total',
                  'Commprobante de pago'
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
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const AutoSizeText(
                            'Papitas ya',
                            minFontSize: 18,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const AutoSizeText(
                            '4500',
                            minFontSize: 12,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(Container(
                        alignment: Alignment.center,
                        child: const BtnIconoVerComprobante(),
                      )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: TableWidget(
                columns: const ['Id', 'Producto', 'Cantidad'],
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
                            'Salchipapa',
                            minFontSize: 14,
                            maxFontSize: 18,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: const AutoSizeText(
                            ' 1',
                            minFontSize: 18,
                            maxFontSize: 18,
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
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Btn1(
                      w: MediaQuery.of(context).size.width * 0.1,
                      h: MediaQuery.of(context).size.height * 0.05,
                      op: () {
                        Navigator.pop(context);
                      },
                      child: const TextoBotones(text: 'Volver')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
