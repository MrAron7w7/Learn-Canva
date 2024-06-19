import 'package:crea_ya/constants/image_svg.dart';
import 'package:crea_ya/data/my_beneficio_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BeneficioPage extends StatefulWidget {
  const BeneficioPage({super.key});

  @override
  State<BeneficioPage> createState() => _BeneficioPageState();
}

class _BeneficioPageState extends State<BeneficioPage> {
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
            'Beneficios de Usar Lean Canvas',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          Gap(size.height * 0.02),
          Column(
            children: beneficios.map((e) {
              return ListTile(
                leading: const Icon(
                  Icons.circle,
                  size: 10,
                ),
                title: Text(
                  e['title'],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
          Gap(size.height * 0.02),
          Container(
            alignment: Alignment.center,
            width: size.width,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              ImageAssets.beneficios,
              fit: BoxFit.cover,
              width: size.width,
              height: size.height * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
