import 'package:crea_ya/constants/image_svg.dart';
import 'package:crea_ya/data/my_bloques_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NueveBloquesPage extends StatefulWidget {
  const NueveBloquesPage({super.key});

  @override
  State<NueveBloquesPage> createState() => _NueveBloquesPageState();
}

class _NueveBloquesPageState extends State<NueveBloquesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(size.height * 0.02),
            Text(
              'Los 9 Bloques del Lean Canvas',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Gap(size.height * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: myBloquesItem.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 10,
                        ),
                        Text(
                          e['title'],
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Text(
                      e['description'],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(size.height * 0.02),
                  ],
                );
              }).toList(),
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
                  image: AssetImage(ImageAssets.nueveBloques.toString()),
                ),
              ),
            ),
            Gap(size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
