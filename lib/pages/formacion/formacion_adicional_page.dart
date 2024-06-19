import 'package:flutter/material.dart';

class FormacionAdicionalPage extends StatefulWidget {
  const FormacionAdicionalPage({super.key});

  @override
  State<FormacionAdicionalPage> createState() => _FormacionAdicionalPageState();
}

class _FormacionAdicionalPageState extends State<FormacionAdicionalPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Formacion Adicional Page',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
