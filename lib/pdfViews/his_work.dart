import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


class HisWork extends StatelessWidget {
  const HisWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const PDF().cachedFromUrl(
             'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D9%85%D9%84%D8%AE%D8%B5%20%D8%B1%D8%AD%D9%84%D8%A7%D8%AA%20%D9%88%20%D8%B1%D8%B3%D8%A7%D8%A6%D9%84%20%D8%A8%D9%88%D9%84%D8%B3%20%D8%A7%D9%84%D8%B1%D8%B3%D9%88%D9%84.pdf?alt=media&token=138d5b47-40fc-42b0-8cb8-1c4733c8f98c',
             placeholder: (progress) => Center(child: Text('$progress %')),
             errorWidget: (error) => Center(child: Text(error.toString())),
           )
    );
  }
}