import 'package:crea_ya/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _selectedContent = Center(
    child: SvgPicture.asset(
      'assets/svg/search.svg',
      width: 200,
      height: 200,
    ),
  );

  void _updateContent(Widget content) {
    setState(() {
      _selectedContent = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MyDrawer(updateContent: _updateContent),
          MyHomeDrawer(content: _selectedContent),
        ],
      ),
    );
  }
}
