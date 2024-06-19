import 'package:crea_ya/data/presentation_data.dart';
import 'package:crea_ya/themes/colors.dart';
import 'package:flutter/material.dart';

class BarraProgresiva extends StatelessWidget {
  const BarraProgresiva({
    super.key,
    required List<PresentationData> data,
    required this.selectPage,
  }) : _data = data;

  final List<PresentationData> _data;
  final int selectPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _data.map((e) {
        var index = _data.indexOf(e);

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == selectPage ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: index == selectPage ? TColors.main : TColors.blackLow,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }).toList(),
    );
  }
}
