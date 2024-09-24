import 'package:final_why_app/pdfViews/table_view.dart';
import 'package:final_why_app/pdfViews/taranem_view.dart';
import 'package:final_why_app/views/st_poloesview.dart';
import 'package:final_why_app/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/st.pavlos.jpg'), // Add your image here
                fit: BoxFit.cover, // Ensure the image covers the whole screen
              ),
            ),
          ),
          // Foreground content
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBotton(
                imageurl: 'assets/images/st.pavlos.jpg',
                title: 'بولس الرسول',
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const StPolesView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/music .png',
                title: "ترانيم",
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const TarnemView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/time.png',
                title: "الجدول",
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const TableView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
