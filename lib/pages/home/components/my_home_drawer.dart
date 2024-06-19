import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

class MyHomeDrawer extends StatefulWidget {
  final Widget content;
  const MyHomeDrawer({super.key, required this.content});

  @override
  State<MyHomeDrawer> createState() => _MyHomeDrawerState();
}

class _MyHomeDrawerState extends State<MyHomeDrawer> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  final String discover = 'assets/svg/discover.svg';

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
        child: Column(
          children: [
            // AppBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                        icon: const Iconify(HeroiconsSolid.chevron_left),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        },
                        icon: const Iconify(HeroiconsSolid.menu_alt_2),
                      ),
                const Column(
                  children: [
                    Text(
                      'Emprende con',
                      style: TextStyle(fontSize: 20, color: TColors.blackHigh),
                    ),
                    Text(
                      'Lean Canvas',
                      style: TextStyle(fontSize: 20, color: TColors.blackMind),
                    ),
                  ],
                ),
                Container(),
                /*const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/kazu.jpg'),
                ),*/
              ],
            ),
            // Dynamic Content
            Expanded(child: widget.content),
          ],
        ),
      ),
    );
  }
}
