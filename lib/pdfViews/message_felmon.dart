import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';


class MessageFelmon extends StatelessWidget {
  const MessageFelmon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const PDF().cachedFromUrl(
             "https://firebasestorage.googleapis.com/v0/b/finalproject1-e502a.appspot.com/o/DOC-20240917-WA0006..pdf?alt=media&token=7da4d45e-8c39-479c-9561-c1900b3ec09b",
             placeholder: (progress) => Center(child: Text('$progress %')),
             errorWidget: (error) => Center(child: Text(error.toString())),
           )
    );
  }
}