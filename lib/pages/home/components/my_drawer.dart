import 'package:crea_ya/data/my_drawer_item.dart';
import 'package:crea_ya/pages/home/components/drawer_items.dart';
import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

class MyDrawer extends StatefulWidget {
  final Function(Widget) updateContent;
  const MyDrawer({super.key, required this.updateContent});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: TColors.main,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            children: [
              /*const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/kazu.jpg'),
                  ),
                  Gap(16),
                  Text(
                    'Arón Magallanes',
                    style: TextStyle(fontSize: 20, color: TColors.whiteLow),
                  )
                ],
              ),*/
              const Spacer(),

              // Drawer Items

              Column(
                children: myDrawerItem.map((e) {
                  return ItemDrawes(
                      element: e, updateContent: widget.updateContent);
                }).toList(),
              ),

              const Spacer(),

              // Config
              /*Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.5,
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                    child: const Row(
                      children: [
                        Iconify(
                          HeroiconsSolid.cog_6_tooth,
                          color: TColors.whiteLow,
                          size: 24,
                        ),
                        Gap(12),
                         Text(
                          'Configuración ',
                          style: TextStyle(
                            color: TColors.whiteLow,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),*/
              Gap(size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: TColors.whiteLow,
          size: 24,
        ),
        const Gap(12),
        Text(
          title,
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
    );
  }
}
