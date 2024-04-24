import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/alertDialogEditar.dart';
import 'package:kioskito_gerente/structure/alertDialogMessage.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';

class Circulo extends StatelessWidget {
  final double r;
  final String link;
  const Circulo({super.key, required this.r, required this.link});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: r,
      backgroundImage: NetworkImage(link),
    );
  }
}

class BtnIconoEditar extends StatelessWidget {
  final op;
  const BtnIconoEditar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialogEditar(),
          );
        },
        icon: Icon(
          Icons.edit_square,
          color: btnEditar,
        ));
  }
}

//Botón Eliminar
class BtnIconoEliminar extends StatelessWidget {
  final op;
  const BtnIconoEliminar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialogMessage(
              color: blanco,
              title: ContenedorTexto(
                  maxL: 1,
                  w: MediaQuery.of(context).size.width * 0.3,
                  h: MediaQuery.of(context).size.height * 0.08,
                  text: 'Aviso',
                  style: temaApp.textTheme.titleMedium,
                  maxF: 42,
                  minF: 8,
                  posicionText: Alignment.center),
              w: 0.2,
              h: 0.15,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  var tamanioAlert = constraints;
                  return Padding(
                    padding: EdgeInsets.only(
                        right: tamanioAlert.maxWidth * 0.1,
                        left: tamanioAlert.maxWidth * 0.1),
                    child: Column(
                      children: [
                        SizedBox(
                          height: tamanioAlert.maxHeight * 0.12,
                        ),
                        ContenedorTextoGrande(
                            maxL: 3,
                            style: temaApp.textTheme.titleSmall,
                            w: tamanioAlert.maxWidth * 0.75,
                            h: tamanioAlert.maxHeight * 0.5,
                            text:
                                '¿Está seguro que desea eliminar este producto?',
                            maxF: 26,
                            minF: 12,
                            posicionText: Alignment.center),
                        Padding(
                          padding: EdgeInsets.only(
                              top: tamanioAlert.maxHeight * 0.15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Btn1(
                                w: tamanioAlert.maxWidth * 0.1,
                                h: tamanioAlert.maxHeight * 0.1,
                                child: const TextoBotones(text: 'Cancelar'),
                                op: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SizedBox(
                                width: tamanioAlert.maxWidth * 0.1,
                              ),
                              Btn1(
                                w: tamanioAlert.maxWidth * 0.1,
                                h: tamanioAlert.maxHeight * 0.1,
                                child: const TextoBotones(text: 'Aceptar'),
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
      icon: Icon(
        Icons.delete_forever,
        color: btnEliminar,
      ),
    );
  }
}

class BtnIconoDisponibilidad extends StatelessWidget {
  final op;
  const BtnIconoDisponibilidad({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.battery_alert_sharp,
        color: btnDisponibilidad,
      ),
    );
  }
}

class BtnIconoInfo extends StatelessWidget {
  final op;
  const BtnIconoInfo({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.info,
        color: btnIconoInfo,
      ),
    );
  }
}

class BtnIconoAprobar extends StatelessWidget {
  final op;
  const BtnIconoAprobar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.check_circle,
        color: btnIconoAprobar,
      ),
    );
  }
}

class BtnIconoRechazar extends StatelessWidget {
  final op;
  const BtnIconoRechazar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.highlight_off,
        color: btnIconoRechazar,
      ),
    );
  }
}

//Icono para ver el comprobante de pago

class BtnIconoVerComprobante extends StatelessWidget {
  final op;
  const BtnIconoVerComprobante({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.remove_red_eye_rounded,
        color: btnIconoInfo,
      ),
    );
  }
}
