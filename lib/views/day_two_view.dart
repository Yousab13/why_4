import 'package:final_why_app/views/ask_anba_fam.dart';
import 'package:final_why_app/views/ask_anba_mataws.dart';
import 'package:final_why_app/views/ask_anba_rafeel.dart';
import 'package:final_why_app/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
class DayTwoView extends StatelessWidget {
  const DayTwoView({super.key});

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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBotton(
                imageurl: 'assets/images/انبا متاؤس.jpg',
                title: "اسأل الانبا متاؤس",
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const AsKAnbaMatawisView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/انبا فام اسقف المنيا.jpg',
                title: "اسأل الانبا فام",
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const AsKAnbaFamView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/انبا رافائيل.jpg',
                title: "اسأل الانبا رافائيل",
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const AsKAnbaRefeelView(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
              )
            ],
          ) // Foreground content
        ],
      ),
    );
  }
}
