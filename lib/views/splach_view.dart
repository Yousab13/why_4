import 'dart:async';

import 'package:final_why_app/views/bottom_nav_view.dart';
import 'package:flutter/material.dart';


class SplachView extends StatefulWidget {
  const SplachView({super.key});
  @override
  State<SplachView> createState() => _SplachViewState();
}
class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const BottomNavView(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo.jpg')),
    );
  }
}