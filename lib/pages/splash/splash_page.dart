import 'package:crea_ya/pages/pages.dart';
import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    goNextPage();
    super.initState();
  }

  void goNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    goPresentationPage();
  }

  void goPresentationPage() {
    Navigator.pushReplacement(context,
        CupertinoPageRoute(builder: (context) => const Presentation()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String assetName = 'assets/svg/splash.svg';
    String circleName = 'assets/svg/circle-splash.svg';
    return Scaffold(
      backgroundColor: TColors.main,
      body: Column(
        children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                circleName,
                width: size.width * 0.5,
                height: size.width * 0.5,
              ),
              Text.rich(
                TextSpan(
                  text: 'CREA',
                  style: TextStyle(
                    color: TColors.main,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                  children: [
                    TextSpan(
                        text: 'YA!',
                        style: TextStyle(
                          color: TColors.main,
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          height: 1,
                        )),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            assetName,
            width: size.width,
          ),
        ],
      ),
    );
  }
}
