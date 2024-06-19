import 'package:flutter/material.dart';

class DescargarPlantilla extends StatefulWidget {
  const DescargarPlantilla({super.key});

  @override
  State<DescargarPlantilla> createState() => _DescargarPlantillaState();
}

class _DescargarPlantillaState extends State<DescargarPlantilla> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Descargar Plantilla',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
