import 'package:crea_ya/constants/image_svg.dart';
import 'package:crea_ya/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class FormacionAdicionalPage extends StatefulWidget {
  const FormacionAdicionalPage({super.key});

  @override
  State<FormacionAdicionalPage> createState() => _FormacionAdicionalPageState();
}

class _FormacionAdicionalPageState extends State<FormacionAdicionalPage> {
  final String templateMoreInfo =
      'https://www.oleoshop.com/blog/que-es-el-lean-canvas-y-como-implementarlo';

  Future<void> _launchUrlInfo() async {
    final Uri url = Uri.parse(templateMoreInfo);
    if (await launchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('No se pudo abrir el enlace de información')));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(size.height * 0.02),
          Text(
            '¿Quieres Saber Más?',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Gap(size.height * 0.02),
          Text(
            'Si quieres seguir formándote en emprendimiento y aprender de expertos en el sector, te invitamos a conocer nuestro programa de Máster Online Business & Entrepreneurship.',
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
                image: AssetImage(ImageAssets.info.toString()),
              ),
            ),
          ),
          Gap(size.height * 0.02),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            width: size.width,
            child: MyButton(
              text: 'Más Información',
              onTap: _launchUrlInfo,
            ),
          ),
        ],
      ),
    );
  }
}
