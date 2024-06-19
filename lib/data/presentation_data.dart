import 'package:crea_ya/constants/image_svg.dart';
import 'package:flutter/material.dart';

class PresentationData {
  String? title;
  String? subtitle;
  String? image;
  List<Color>? gradientColor;
  PresentationData({
    this.title,
    this.subtitle,
    this.image,
    this.gradientColor,
  });

  static List<PresentationData> presentationData() {
    return [
      PresentationData(
        title: "Bienvenido a Lean Canvas",
        subtitle:
            "Transforma tu idea en un negocio sólido con nuestro enfoque estructurado y visual.",
        image: ImageAssets.presentationImg1,
        gradientColor: [const Color(0xffDEE9FF), const Color(0xffFFFFFF)],
      ),
      PresentationData(
        title: "Descubre los Beneficios de Lean Canvas",
        subtitle:
            "Simplifica la planificación y enfócate en lo que realmente importa para tu negocio.",
        image: ImageAssets.presentationImg2,
        gradientColor: [const Color(0xffFCECDB), const Color(0xffFFFFFF)],
      ),
      PresentationData(
        title: "Empieza a Crear tu Lean Canvas",
        subtitle:
            "Completa los 9 bloques esenciales para darle vida a tu idea de negocio.",
        image: ImageAssets.presentationImg3,
        gradientColor: [const Color(0xffE5FFD8), const Color(0xffFFFFFF)],
      ),
    ];
  }
}
