import 'package:final_why_app/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';


class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body:CustomNavBar(),
    );
  }
}