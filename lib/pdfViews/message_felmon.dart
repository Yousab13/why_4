import 'package:final_why_app/functions/nav_function.dart';
import 'package:flutter/material.dart';
class MessageFelmon extends StatelessWidget {
  const MessageFelmon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:pdfView(url:  "https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/DOC-20240917-WA0006..pdf?alt=media&token=7da4d45e-8c39-479c-9561-c1900b3ec09b",)
    );
  }
}