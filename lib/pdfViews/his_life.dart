import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


// ignore: must_be_immutable
class HisLife extends StatelessWidget {
   HisLife({super.key});
  String url = 'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D8%B1%D8%AD%D9%84%D8%A9_%D8%AD%D9%8A%D8%A7%D8%A9_%D8%A8%D9%88%D9%84%D8%B3_%D8%A7%D9%84%D8%B1%D8%B3%D9%88%D9%84.pdf?alt=media&token=f74b974a-da45-4ffb-89ab-dff06ef53628';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:pdfView(url: url)
    );
  }

  Widget pdfView({required String url}) {
    return const PDF().cachedFromUrl(
           'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D8%B1%D8%AD%D9%84%D8%A9_%D8%AD%D9%8A%D8%A7%D8%A9_%D8%A8%D9%88%D9%84%D8%B3_%D8%A7%D9%84%D8%B1%D8%B3%D9%88%D9%84.pdf?alt=media&token=f74b974a-da45-4ffb-89ab-dff06ef53628',
           placeholder: (progress) => Center(child: Text('$progress %')),
           errorWidget: (error) => Center(child: Text(error.toString())),
         );
  }
}