import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void navigateToScreen(BuildContext context, Widget screen) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: screen,
    withNavBar: false, // OPTIONAL VALUE. True by default.
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}
Widget pdfView({required String url}) {
    return const PDF().cachedFromUrl(
      url,
           placeholder: (progress) => Center(child: Text('$progress %')),
           errorWidget: (error) => Center(child: Text(error.toString())),
         );
 }
