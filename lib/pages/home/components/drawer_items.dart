import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

class ItemDrawes extends StatelessWidget {
  final Map<dynamic, dynamic> element;
  final Function(Widget) updateContent;
  const ItemDrawes(
      {super.key, required this.element, required this.updateContent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateContent(
          element['route'],
        );
      },
      child: Container(
        //color: Colors.red[100],
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          children: [
            Iconify(
              element['icon'],
              color: TColors.whiteLow,
              size: 24,
            ),
            const Gap(12),
            Text(
              element['title'],
              style: const TextStyle(
                color: TColors.whiteLow,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Iconify(
              HeroiconsSolid.chevron_right,
              color: TColors.whiteLow,
            )
          ],
        ),
      ),
    );
  }
}
