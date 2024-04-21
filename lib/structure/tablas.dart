import "package:flutter/material.dart";

import "package:kioskito_gerente/common/paleta.dart";
import "package:kioskito_gerente/common/style.dart";

//Tabla Widget

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.columns,
    required this.rows,
    this.headerColor,
  });
  final List<String> columns;
  final List<DataRow> rows;
  final Color? headerColor;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.90,
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        controller: scrollController,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          children: [
            DataTable(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.32, 0.3],
                    colors: [btn2, blanco]),
              ),
              border: TableBorder(
                horizontalInside: const BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.grey.shade300, width: 1.2),
              ),
              dividerThickness: .1,
              dataRowColor: const MaterialStatePropertyAll(Colors.white),
              columns: columns
                  .map((e) => DataColumn(label: TableLabel(text: e)))
                  .toList(),
              rows: rows,
            ),
          ],
        ),
      ),
    );
  }
}

//Titulo tabla

class TableLabel extends StatelessWidget {
  final String text;
  const TableLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: temaApp.textTheme.displaySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
