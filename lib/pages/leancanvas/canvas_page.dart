import 'package:crea_ya/constants/image_svg.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CanvasPage extends StatefulWidget {
  const CanvasPage({super.key});

  @override
  State<CanvasPage> createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(size.height * 0.02),
          Text(
            '¿Qué es Lean Canvas?',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Gap(size.height * 0.02),
          Text(
            'Lean Canvas es una herramienta diseñada para la fase inicial de creación de una empresa. Su objetivo es validar de forma clara y visual el modelo de negocio, identificando sus debilidades y fortalezas para aplicar optimizaciones que aumenten sus posibilidades de éxito.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
              height: 1.5,
            ),
          ),
          Gap(size.height * 0.02),
          Container(
            width: size.width,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 30,
                  spreadRadius: 10,
                  offset: const Offset(
                    0,
                    10,
                  ),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageAssets.queescanvas.toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
