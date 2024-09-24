import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


class TarnemView extends StatelessWidget {
  const TarnemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const PDF().cachedFromUrl(
             'https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/%D8%AA%D8%B1%D8%A7%D9%86%D9%8A%D9%85.pdf?alt=media&token=79b0341e-4a66-4bbe-9e39-22fbc199b68c',
             placeholder: (progress) => Center(child: Text('$progress %')),
             errorWidget: (error) => Center(child: Text(error.toString())),
           )
    );
  }
}