import 'package:flutter/material.dart';

class MyToast extends StatefulWidget {
  final String text;
  const MyToast({super.key, required this.text});

  @override
  State<MyToast> createState() => _MyToastState();
}

class _MyToastState extends State<MyToast> {
  void showToast() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(widget.text),
    );
  }
}
