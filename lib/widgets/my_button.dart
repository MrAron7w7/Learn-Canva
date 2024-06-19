import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    this.width = 112,
    this.height = 52,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: TColors.main,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: TColors.whiteHigh,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
