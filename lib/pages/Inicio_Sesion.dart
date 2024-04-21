import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/pages/opciones.dart';
import 'package:kioskito_gerente/routes/routes.dart';
import 'package:kioskito_gerente/structure/botons.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/textField.dart';
import 'package:lottie/lottie.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.05),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Lottie.network(
                        'https://lottie.host/d4b2cd6a-a3c7-428c-897d-286c6ccafd6d/ZKxVL019CA.json',
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ),
                  const ContenedorTexto(
                      w: 0.26, h: 0.2, text: 'Kioskito', maxF: 140, minF: 20)
                ],
              ),
              const CampoTexto(
                text: 'Usuario',
                icon: IconoTextField(
                  icono: Icons.person,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CampoTextoPassword(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Btn1(
                w: MediaQuery.of(context).size.width * 0.12,
                h: MediaQuery.of(context).size.height * 0.07,
                child: const TextoBotones(text: 'Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isVisible = true;
}
