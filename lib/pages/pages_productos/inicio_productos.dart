import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/alertDialogAgregar.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/objects.dart';
import 'package:kioskito_gerente/structure/tablas.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:kioskito_gerente/structure/textField.dart';

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
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContenedorTexto(
                    maxL: 1,
                    posicionText: Alignment.center,
                    w: MediaQuery.of(context).size.width * 0.5,
                    h: MediaQuery.of(context).size.height * 0.1,
                    text: 'Inventario de Productos',
                    maxF: 140,
                    minF: 20,
                    style: temaApp.textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampoTexto(
                      direccionText: TextAlignVertical.center,
                      w: MediaQuery.of(context).size.width * 0.5,
                      h: MediaQuery.of(context).size.height * 0.12,
                      text: 'Buscar  ',
                      icon: IconoTextField(
                        icono: Icons.search_outlined,
                        color: negro,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Btn1(
                    w: MediaQuery.of(context).size.width * 0.1,
                    h: MediaQuery.of(context).size.height * 0.06,
                    op: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialogAgregar(),
                      );
                    },
                    child: const TextoBotones(text: 'Agregar'),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.74,
                  height: MediaQuery.of(context).size.height * 0.25,
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              child: BtnIconoEditar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoEliminar(
                                op: () {},
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: BtnIconoDisponibilidad(
                                op: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05),
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
      ),
    );
  }
}
