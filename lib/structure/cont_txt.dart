import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:kioskito_gerente/common/style.dart';

class ContenedorTexto extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final double maxF;
  final double minF;
  const ContenedorTexto(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.maxF,
      required this.minF});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      child: AutoSizeText(
        text,
        maxLines: 1,
        maxFontSize: maxF,
        minFontSize: minF,
        style: temaApp.textTheme.titleLarge,
      ),
    );
  }
}
