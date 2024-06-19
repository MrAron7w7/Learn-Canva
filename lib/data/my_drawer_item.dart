import 'package:crea_ya/pages/pages.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

List<Map> myDrawerItem = [
  {
    'icon': HeroiconsSolid.information_circle,
    'title': '¿Qué es Lean Canvas?',
    'route': const CanvasPage(),
  },
  {
    'icon': HeroiconsSolid.star,
    'title': 'Beneficios',
    'route': const BeneficioPage(),
  },
  {
    'icon': HeroiconsSolid.view_columns,
    'title': 'Los 9 Bloques',
    'route': const NueveBloquesPage(),
  },
  {
    'icon': HeroiconsSolid.arrows_right_left,
    'title': 'Modelo vs. Lean',
    'route': const ModeVsLeanPage(),
  },
  {
    'icon': HeroiconsSolid.wrench_screwdriver,
    'title': 'Metodología Lean Startup',
    'route': const MetodologiaLeanPage(),
  },
  {
    'icon': HeroiconsSolid.download,
    'title': 'Descargar Plantilla',
    'route': const DescargarPlantilla(),
  },
  {
    'icon': HeroiconsSolid.light_bulb,
    'title': 'Formación Adicional',
    'route': const FormacionAdicionalPage(),
  },
];
