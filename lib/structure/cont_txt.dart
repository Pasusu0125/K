import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ContenedorTexto extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final double maxF;
  final double minF;
  final style;
  const ContenedorTexto(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.maxF,
      required this.minF,
      this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: w,
      height: h,
      child: AutoSizeText(
        text,
        maxLines: 1,
        maxFontSize: maxF,
        minFontSize: minF,
        style: style,
      ),
    );
  }
}
