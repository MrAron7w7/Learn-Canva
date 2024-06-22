import 'dart:io';

import 'package:crea_ya/constants/image_svg.dart';
import 'package:crea_ya/themes/colors.dart';
import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:permission_handler/permission_handler.dart' as ph;

import '/widgets/my_button.dart';

class DescargarPlantilla extends StatefulWidget {
  const DescargarPlantilla({super.key});

  @override
  State<DescargarPlantilla> createState() => _DescargarPlantillaState();
}

class _DescargarPlantillaState extends State<DescargarPlantilla> {
  Future<void> _permissionDownload() async {
    final isEnable = await ph.Permission.manageExternalStorage.isGranted;
    final isEnableStorage = await ph.Permission.storage.isGranted;

    if (isEnable || isEnableStorage) {
      //print('Permiso de almacenamiento concedido');
      myToast('Permiso de almacenamiento concedido', colorToast: TColors.main);
      await _downloadImage();
    }
    if (!isEnable) {
      await ph.Permission.manageExternalStorage.request();
      myToast('Permiso de almacenamiento denegado');
    }
    if (!isEnableStorage) {
      await ph.Permission.storage.request();
    }
  }

  Future<void> _downloadImage() async {
    try {
      const String templateUrl =
          'https://25912905.fs1.hubspotusercontent-eu1.net/hubfs/25912905/Plantilla%20Lean%20Canvas%20%7C%20Founderz.png';
      Directory? downloadsDirectory;
      String directoryToDownload = '/storage/emulated/0/Download';
      if (Platform.isAndroid) {
        downloadsDirectory = Directory(directoryToDownload);
      }
      if (downloadsDirectory == null) {
        myToast('Error al obtener el directorio de descargas');
        //print('Error al obtener el directorio de descargas');
        return;
      }

      // Nombre del archivo basado en la URL
      final String fileName = templateUrl.split('/').last;
      final String filePath = '${downloadsDirectory.path}/$fileName';

      // Descargar la imagen
      final Dio dio = Dio();
      await dio.download(templateUrl, filePath);
      myToast('Imagen descargada en su directorio de descargas',
          colorToast: TColors.main);
    } catch (e) {
      //print('Error al descargar la imagen: $e');
      myToast('Error al descargar la imagen');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final String downloadImg = ImageAssets.downloads.toString();

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(size.height * 0.02),
          Text(
            '¿Listo para comenzar? 😊',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Gap(size.height * 0.02),
          Text(
            'Descarga nuestra plantilla de Lean Canvas y empieza a estructurar tu modelo de negocio hoy mismo.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
              height: 1.5,
            ),
          ),
          Gap(size.height * 0.08),
          Container(
            alignment: Alignment.center,
            //color: Colors.red[100],
            width: size.width,
            height: size.height * 0.3,
            child: SvgPicture.asset(downloadImg),
          ),
          Gap(size.height * 0.02),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            width: size.width,
            child: MyButton(
              text: 'Descargar Plantilla',
              onTap: _permissionDownload,
            ),
          ),
        ],
      ),
    );
  }

  void myToast(String text, {Color colorToast = Colors.red}) {
    DelightToastBar(
      snackbarDuration: const Duration(milliseconds: 2000),
      autoDismiss: true,
      position: DelightSnackbarPosition.top,
      builder: (context) {
        return ToastCard(
          leading: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          color: colorToast,
          title: Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        );
      },
    ).show(context);
  }
}
