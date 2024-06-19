import 'package:crea_ya/constants/image_svg.dart';
import 'package:crea_ya/pages/modevslean/my_table_information.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModeVsLeanPage extends StatefulWidget {
  const ModeVsLeanPage({super.key});

  @override
  State<ModeVsLeanPage> createState() => _ModeVsLeanPageState();
}

class _ModeVsLeanPageState extends State<ModeVsLeanPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          const Gap(14),
          Text(
            'Diferencias entre Modelo Canvas y Lean Canvas',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          const Gap(40),
          const MyTableInformation(),
          const Gap(40),
          Container(
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
                ]),
            child: Image.asset(ImageAssets.diferencia),
          ),
        ],
      ),
    );
  }
}
