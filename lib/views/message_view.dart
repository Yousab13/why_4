import 'package:final_why_app/constants.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String content;

  const DetailScreen({
    super.key,
    required this.title,
    required this.content,

  });

  @override
  Widget build(BuildContext context) {
     return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
        appBar: AppBar(
          title: const Text('تفاصيل الإشعار'),
          backgroundColor: kprimeryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
           ),
     );
  }
}