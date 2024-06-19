import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';

class MyTableInformation extends StatelessWidget {
  const MyTableInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: TColors.main,
          ),
          children: const [
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text(
                'Modelo Canvas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: TColors.whiteHigh,
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text(
                'Lean Canvas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: TColors.whiteHigh,
                ),
              ),
            ),
          ],
        ),
        const TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Empresas ya establecidas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: TColors.blackHigh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TableCell(
              child: Text(
                'Proyectos en fase inicial',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: TColors.blackHigh,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Más detallado',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: TColors.blackHigh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TableCell(
              child: Text(
                'Más simplificado y ágil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: TColors.blackHigh,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Relación con clientes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: TColors.blackHigh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TableCell(
              child: Text(
                'Problema y Solución',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: TColors.blackHigh,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Actividades clave',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: TColors.blackHigh,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TableCell(
              child: Text(
                'Propuesta de Valor',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: TColors.blackHigh,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
