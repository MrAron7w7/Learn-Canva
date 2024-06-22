import 'package:crea_ya/constants/image_svg.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MetodologiaLeanPage extends StatefulWidget {
  const MetodologiaLeanPage({super.key});

  @override
  State<MetodologiaLeanPage> createState() => _MetodologiaLeanPageState();
}

class _MetodologiaLeanPageState extends State<MetodologiaLeanPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String textInfo = '''
Primero, pasamos de la idea al producto diseñando o creando un MVP (producto mínimo viable). Una vez creado, pasamos a los datos probándolo en el mercado. Para ello, medimos su alcance entre los primeros consumidores. Una vez tenemos los datos recopilados, es momento de aprender tras analizarlos y volver a plantear nuevas ideas, en caso de que sea necesario. Esta metodología la vemos reflejada en el Lean Canvas de dos maneras: en que es efectiva en la fase inicial, o incluso previa, de un negocio; y que sirve al emprendedor para ver si su idea puede tener éxito.
''';
    return SizedBox(
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(size.height * 0.02),
            Text(
              'Metodología Lean Startup',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Gap(size.height * 0.02),
            Text(
              'La metodología Lean Startup se utiliza para desarrollar nuevos negocios o productos novedosos, validando hipótesis y acortando ciclos de desarrollo para asegurar el éxito antes del lanzamiento.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            Gap(size.height * 0.02),
            Text(
              'Lista de Pasos: Diseñar, Medir, Aprender.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withAlpha(200),
                height: 1.5,
              ),
            ),
            Gap(size.height * 0.02),
            Container(
              width: size.width,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageAssets.leanStartup.toString()),
                ),
              ),
            ),
            Gap(size.height * 0.02),
            Text(
              textInfo,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
