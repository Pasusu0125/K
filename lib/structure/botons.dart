import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';
import 'package:kioskito_gerente/common/style.dart';

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
  const Btn2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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

class ContenedorBtn extends StatelessWidget {
  final op;
  final double h;
  final double w;
  const ContenedorBtn({super.key, this.op, required this.h, required this.w});

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
    );
  }
}
