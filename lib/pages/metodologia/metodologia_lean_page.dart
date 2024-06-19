import 'package:flutter/material.dart';

class MetodologiaLeanPage extends StatefulWidget {
  const MetodologiaLeanPage({super.key});

  @override
  State<MetodologiaLeanPage> createState() => _MetodologiaLeanPageState();
}

class _MetodologiaLeanPageState extends State<MetodologiaLeanPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Metodologia Lean Page',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
