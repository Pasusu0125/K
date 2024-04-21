import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
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
      body: TableWidget(
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
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: const BtnIconoInfo(),
                ),
              ),
              DataCell(
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: const BtnIconoAprobar(),
                ),
              ),
              DataCell(
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: const BtnIconoRechazar(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
