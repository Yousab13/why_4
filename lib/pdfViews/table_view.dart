import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const PDF().cachedFromUrl(
             'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D8%A7%D9%84%D8%AD%D8%AF%D9%88%D9%84.pdf?alt=media&token=b4a2e72a-d689-423a-9059-7efc3bec98d8',
             placeholder: (progress) => Center(child: Text('$progress %')),
             errorWidget: (error) => Center(child: Text(error.toString())),
           )
    );
  }
}
//https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/music.pdf?alt=media&token=559e6981-2b65-4bf0-92bc-acb4a226f666