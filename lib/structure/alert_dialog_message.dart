import 'package:flutter/material.dart';

class AlertDialogMessage extends StatelessWidget {
  final double width;
  final double heigth;
  final Widget child;
  final Widget title;
  final Color color;
  const AlertDialogMessage({
    super.key,
    required this.width,
    required this.heigth,
    required this.child,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      backgroundColor: color,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * heigth,
        child: child,
      ),
    );
  }
}
