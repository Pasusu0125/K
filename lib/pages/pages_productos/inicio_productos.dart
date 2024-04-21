import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/structure/objects.dart';
import 'package:kioskito_gerente/structure/tablas.dart';
import 'package:auto_size_text/auto_size_text.dart';

class InicioProductos extends StatefulWidget {
  const InicioProductos({super.key});

  @override
  State<InicioProductos> createState() => _InicioProductosState();
}

class _InicioProductosState extends State<InicioProductos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05),
                child: TableWidget(
                  columns: const [
                    'Id',
                    'Nombre',
                    'Descripción',
                    'Precio',
                    'Foto',
                    'Editar',
                    'Eliminar',
                    'Disponibilidad'
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.05,
                            child: const AutoSizeText(
                              '1',
                              minFontSize: 12,
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
                              minFontSize: 12,
                              maxFontSize: 18,
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: 220,
                            child: const AutoSizeText(
                              'Papas fritas con salchicha',
                              minFontSize: 12,
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
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.05,
                            child: Circulo(
                                r: MediaQuery.of(context).size.width * 0.05,
                                link:
                                    'https://images.unsplash.com/photo-1630431341771-1ceb084d6607?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8ZnJ5JTIwcG90YXRvZXN8ZW58MHx8fHwxNzEyMjg4NjkwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.05,
                            child: const BtnIconoEditar(),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.05,
                            child: const BtnIconoEliminar(),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.11,
                            child: const BtnIconoDisponibilidad(),
                          ),
                        ),
                      ],
                    ),
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
