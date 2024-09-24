import 'package:final_why_app/constants.dart';
import 'package:flutter/material.dart';


class CustomButtonSend extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const CustomButtonSend({super.key, required this.onTap, required this.title});
  @override
  Widget build(BuildContext context) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
                color: kprimeryColor, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text
              (
                title,
                style: const TextStyle(
                   color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
  }
}
