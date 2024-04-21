import 'package:flutter/material.dart';
import 'package:kioskito_gerente/common/paleta.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.edit_square,
              color: btnEditar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_square,
              color: btnEditar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoEliminar extends StatelessWidget {
  final op;
  const BtnIconoEliminar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.delete_forever,
              color: btnEliminar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_forever,
              color: btnEliminar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoDisponibilidad extends StatelessWidget {
  final op;
  const BtnIconoDisponibilidad({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.battery_alert_sharp,
              color: btnDisponibilidad,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.battery_alert_sharp,
              color: btnDisponibilidad,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoInfo extends StatelessWidget {
  final op;
  const BtnIconoInfo({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.info,
              color: btnIconoInfo,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: btnIconoInfo,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoAprobar extends StatelessWidget {
  final op;
  const BtnIconoAprobar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.check_circle,
              color: btnIconoAprobar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check_circle,
              color: btnIconoAprobar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoRechazar extends StatelessWidget {
  final op;
  const BtnIconoRechazar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.highlight_off,
              color: btnIconoRechazar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.highlight_off,
              color: btnIconoRechazar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}
