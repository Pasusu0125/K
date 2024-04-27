import 'package:flutter/material.dart';

class AlertDialogMessage extends StatelessWidget {
  final double w;
  final double h;
  final Widget child;
  final Widget title;
  final Color color;
  const AlertDialogMessage({
    super.key,
    required this.w,
    required this.h,
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
        width: MediaQuery.of(context).size.width * w,
        height: MediaQuery.of(context).size.height * h,
        child: child,
      ),
    );
  }
}
