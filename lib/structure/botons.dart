import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';
import 'package:kioskito_gerente/structure/cont_txt.dart';
import 'package:kioskito_gerente/structure/objects.dart';

//Botón sin icono
class Btn1 extends StatelessWidget {
  final Widget child;
  final double w;
  final double h;
  final op;
  const Btn1(
      {super.key,
      this.op,
      required this.child,
      required this.w,
      required this.h});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: w,
      height: h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: btn1,
      onPressed: op,
      child: child,
    );
  }
}

//Botón con icono
class Btn2 extends StatelessWidget {
  final Widget child;
  final double w;
  final double h;
  final op;
  const Btn2(
      {super.key,
      required this.child,
      required this.w,
      required this.h,
      this.op});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: w,
      height: h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: btn2,
      onPressed: op,
      child: child,
    );
  }
}

//Texto Botón
class TextoBotones extends StatelessWidget {
  final String text;
  const TextoBotones({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      maxFontSize: 24,
      minFontSize: 2,
      maxLines: 1,
      text,
      style: temaApp.textTheme.displaySmall,
      textAlign: TextAlign.center,
    );
  }
}

class IconoBtn extends StatelessWidget {
  final icno;
  final Color color;
  const IconoBtn({super.key, required this.icno, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icno,
      color: color,
    );
  }
}

//Contenedor Cartas Gerente
class ContenedorBtn extends StatelessWidget {
  final op;
  final double h;
  final double w;
  final String rutaImg;
  final String title;
  const ContenedorBtn({
    super.key,
    this.op,
    required this.h,
    required this.w,
    required this.rutaImg,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: op,
      height: MediaQuery.of(context).size.height * h,
      minWidth: MediaQuery.of(context).size.width * w,
      color: btn2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Circulo(r: MediaQuery.of(context).size.width * 0.04, link: rutaImg),
            ContenedorTexto(
                maxL: 1,
                posicionText: Alignment.center,
                w: MediaQuery.of(context).size.width * 0.1,
                h: MediaQuery.of(context).size.height * 0.08,
                text: title,
                style: temaApp.textTheme.titleSmall,
                maxF: 42,
                minF: 8),
          ],
        ),
      ),
    );
  }
}
