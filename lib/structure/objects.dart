import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/alert_dialog_editar.dart';
import 'package:kioskito_gerente/structure/alert_dialog_message.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';

class Circulo extends StatelessWidget {
  final double radius;
  final String link;
  const Circulo({super.key, required this.radius, required this.link});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(link),
    );
  }
}

class BtnIconoEditar extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoEditar({
    super.key,
    required this.onTap,
  });

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
  final VoidCallback onTap;
  const BtnIconoEliminar({
    super.key,
    required this.onTap,
  });

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
                  width: MediaQuery.of(context).size.width * 0.25,
                  heigth: MediaQuery.of(context).size.height * 0.06,
                  text: 'Aviso',
                  style: temaApp.textTheme.titleMedium,
                  maxF: 42,
                  minF: 8,
                  posicionText: Alignment.center),
              width: 0.25,
              heigth: 0.25,
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
                            width: tamanioAlert.maxWidth * 0.75,
                            heigth: tamanioAlert.maxHeight * 0.5,
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
                                width: tamanioAlert.maxWidth * 0.1,
                                heigth: tamanioAlert.maxHeight * 0.1,
                                child: const TextoBotones(text: 'Cancelar'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SizedBox(
                                width: tamanioAlert.maxWidth * 0.1,
                              ),
                              Btn1(
                                width: tamanioAlert.maxWidth * 0.1,
                                heigth: tamanioAlert.maxHeight * 0.1,
                                child: const TextoBotones(text: 'Aceptar'),
                                onTap: () {
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
  final VoidCallback onTap;
  const BtnIconoDisponibilidad({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.battery_alert_sharp,
        color: btnDisponibilidad,
      ),
    );
  }
}

class BtnIconoInfo extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoInfo({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.info,
        color: btnIconoInfo,
      ),
    );
  }
}

class BtnIconoAprobar extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoAprobar({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.check_circle,
        color: btnIconoAprobar,
      ),
    );
  }
}

class BtnIconoRechazar extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoRechazar({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.highlight_off,
        color: btnIconoRechazar,
      ),
    );
  }
}

//Icono para ver el comprobante de pago

class BtnIconoVerComprobante extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoVerComprobante({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialogMessage(
                width: 0.3,
                heigth: 0.7,
                title: ContenedorTexto(
                    maxL: 1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    heigth: MediaQuery.of(context).size.height * 0.08,
                    text: 'Comprobante de Pago',
                    style: temaApp.textTheme.titleMedium,
                    maxF: 42,
                    minF: 8,
                    posicionText: Alignment.center),
                color: blanco,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    var tamanioAlert = constraints;
                    return Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Container(
                            color: Colors.amber,
                            width: tamanioAlert.maxWidth * 0.7,
                            height: tamanioAlert.maxHeight * 0.8,
                          ),
                        ),
                        SizedBox(
                          height: tamanioAlert.maxHeight * 0.05,
                        ),
                        Btn1(
                          width: tamanioAlert.maxWidth * 0.2,
                          heigth: tamanioAlert.maxHeight * 0.1,
                          child: const TextoBotones(text: 'Volver'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  },
                )));
      },
      icon: Icon(
        Icons.remove_red_eye_rounded,
        color: btnIconoInfo,
      ),
    );
  }
}
