import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/alertDialogMessage.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/textField.dart';

class AlertDialogEditar extends StatelessWidget {
  const AlertDialogEditar({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: ContenedorTexto(
          maxL: 1,
          posicionText: Alignment.center,
          w: MediaQuery.of(context).size.width * 0.4,
          h: MediaQuery.of(context).size.height * 0.07,
          text: 'Editar Producto',
          style: temaApp.textTheme.titleMedium,
          maxF: 80,
          minF: 12),
      backgroundColor: blanco,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.35,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var tamanioAlert = constraints;
            return Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: tamanioAlert.maxHeight * 0.05,
                  left: tamanioAlert.maxWidth * 0.05,
                  right: tamanioAlert.maxWidth * 0.05,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ContenedorTexto(
                            maxL: 1,
                            posicionText: Alignment.bottomLeft,
                            w: tamanioAlert.maxWidth * 0.2,
                            h: tamanioAlert.maxHeight * 0.08,
                            text: 'Nombre',
                            style: temaApp.textTheme.titleSmall,
                            maxF: 32,
                            minF: 8),
                        SizedBox(
                          width: tamanioAlert.maxWidth * 0.1,
                        ),
                        CampoTexto(
                          direccionText: TextAlignVertical.bottom,
                          w: tamanioAlert.maxWidth * 0.55,
                          h: tamanioAlert.maxHeight * 0.12,
                          text: 'Nombre',
                          icon: const Icon(null),
                        )
                      ],
                    ),
                    SizedBox(
                      height: tamanioAlert.maxHeight * 0.05,
                    ),
                    Row(
                      children: [
                        ContenedorTexto(
                            maxL: 1,
                            posicionText: Alignment.bottomLeft,
                            w: tamanioAlert.maxWidth * 0.23,
                            h: tamanioAlert.maxHeight * 0.08,
                            text: 'Descripción',
                            style: temaApp.textTheme.titleSmall,
                            maxF: 32,
                            minF: 8),
                        SizedBox(
                          width: tamanioAlert.maxWidth * 0.07,
                        ),
                        CampoTexto(
                          direccionText: TextAlignVertical.center,
                          w: tamanioAlert.maxWidth * 0.55,
                          h: tamanioAlert.maxHeight * 0.15,
                          text: 'Descripción',
                          icon: const Icon(null),
                        )
                      ],
                    ),
                    SizedBox(
                      height: tamanioAlert.maxHeight * 0.05,
                    ),
                    Row(
                      children: [
                        ContenedorTexto(
                            maxL: 1,
                            posicionText: Alignment.bottomLeft,
                            w: tamanioAlert.maxWidth * 0.2,
                            h: tamanioAlert.maxHeight * 0.08,
                            text: 'Precio',
                            style: temaApp.textTheme.titleSmall,
                            maxF: 32,
                            minF: 8),
                        SizedBox(
                          width: tamanioAlert.maxWidth * 0.1,
                        ),
                        CampoTexto(
                          direccionText: TextAlignVertical.bottom,
                          w: tamanioAlert.maxWidth * 0.55,
                          h: tamanioAlert.maxHeight * 0.12,
                          text: 'Precio',
                          icon: const Icon(null),
                        )
                      ],
                    ),
                    SizedBox(
                      height: tamanioAlert.maxHeight * 0.05,
                    ),
                    Row(
                      children: [
                        ContenedorTexto(
                            maxL: 1,
                            posicionText: Alignment.bottomLeft,
                            w: tamanioAlert.maxWidth * 0.2,
                            h: tamanioAlert.maxHeight * 0.08,
                            text: 'Foto',
                            style: temaApp.textTheme.titleSmall,
                            maxF: 32,
                            minF: 8),
                        SizedBox(
                          width: tamanioAlert.maxWidth * 0.1,
                        ),
                        Btn2(
                          w: tamanioAlert.maxWidth * 0.25,
                          h: tamanioAlert.maxHeight * 0.15,
                          child: Row(
                            children: [
                              IconoBtn(icno: Icons.upload_sharp, color: blanco),
                              const TextoBotones(text: 'Subir Imagen')
                            ],
                          ),
                          op: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: tamanioAlert.maxHeight * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Btn1(
                            w: tamanioAlert.maxWidth * 0.22,
                            h: tamanioAlert.maxHeight * 0.15,
                            op: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialogMessage(
                                    color: fondo,
                                    title: ContenedorTexto(
                                        maxL: 1,
                                        w: MediaQuery.of(context).size.width *
                                            0.2,
                                        h: MediaQuery.of(context).size.height *
                                            0.08,
                                        text: 'Aviso',
                                        style: temaApp.textTheme.titleMedium,
                                        maxF: 42,
                                        minF: 8,
                                        posicionText: Alignment.center),
                                    w: 0.2,
                                    h: 0.2,
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        var tamanioAlert = constraints;
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  tamanioAlert.maxWidth * 0.1,
                                              left:
                                                  tamanioAlert.maxWidth * 0.1),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: tamanioAlert.maxHeight *
                                                    0.12,
                                              ),
                                              ContenedorTextoGrande(
                                                  maxL: 3,
                                                  style: temaApp
                                                      .textTheme.titleSmall,
                                                  w: tamanioAlert.maxWidth *
                                                      0.75,
                                                  h: tamanioAlert.maxHeight *
                                                      0.5,
                                                  text:
                                                      '¿Está seguro que desea cancelar la edición del producto?',
                                                  maxF: 26,
                                                  minF: 12,
                                                  posicionText:
                                                      Alignment.center),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top:
                                                        tamanioAlert.maxHeight *
                                                            0.15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Btn1(
                                                      w: tamanioAlert.maxWidth *
                                                          0.1,
                                                      h: tamanioAlert
                                                              .maxHeight *
                                                          0.1,
                                                      child: const TextoBotones(
                                                          text: 'Cancelar'),
                                                      op: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    SizedBox(
                                                      width: tamanioAlert
                                                              .maxWidth *
                                                          0.1,
                                                    ),
                                                    Btn1(
                                                      w: tamanioAlert.maxWidth *
                                                          0.1,
                                                      h: tamanioAlert
                                                              .maxHeight *
                                                          0.1,
                                                      child: const TextoBotones(
                                                          text: 'Aceptar'),
                                                      op: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    )),
                              );
                            },
                            child: const TextoBotones(text: 'Cancelar'),
                          ),
                          SizedBox(
                            width: tamanioAlert.maxWidth * 0.05,
                          ),
                          Btn1(
                            w: tamanioAlert.maxWidth * 0.22,
                            h: tamanioAlert.maxHeight * 0.15,
                            op: () {},
                            child: const TextoBotones(text: 'Editar'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
