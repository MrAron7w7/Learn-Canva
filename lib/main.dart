import 'package:crea_ya/routers/routes.dart';
import 'package:flutter/material.dart';

import '/pages/pages.dart';
import '/themes/my_text_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CreaYa!',
      theme: ThemeData(
        textTheme: MyTextTheme.defaultTheme.textTheme,
        scaffoldBackgroundColor: Colors.white,
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
        ),
      ),
      routes: routes,
      initialRoute: AppRoutes.splash,
    );
  }
}

final Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.splash: (context) => const SplashPage(),
  AppRoutes.presentation: (context) => const Presentation(),
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.leancanvas: (context) => const CanvasPage(),
  AppRoutes.beneficios: (context) => const BeneficioPage(),
  AppRoutes.nueveBloques: (context) => const NueveBloquesPage(),
  AppRoutes.modevslean: (context) => const ModeVsLeanPage(),
  AppRoutes.metodologia: (context) => const MetodologiaLeanPage(),
  AppRoutes.descargar: (context) => const DescargarPlantilla(),
  AppRoutes.informacion: (context) => const FormacionAdicionalPage(),
};
