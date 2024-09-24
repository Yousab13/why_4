import 'package:final_why_app/functions/nav_function.dart';
import 'package:flutter/material.dart';
class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:pdfView(url:'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D8%A7%D9%84%D8%AD%D8%AF%D9%88%D9%84.pdf?alt=media&token=b4a2e72a-d689-423a-9059-7efc3bec98d8',
)
    );
  }
}
//https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/music.pdf?alt=media&token=559e6981-2b65-4bf0-92bc-acb4a226f666