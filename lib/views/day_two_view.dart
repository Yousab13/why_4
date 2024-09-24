import 'package:final_why_app/functions/nav_function.dart';
import 'package:final_why_app/views/ask_anba_fam.dart';
import 'package:final_why_app/views/ask_anba_mataws.dart';
import 'package:final_why_app/views/ask_anba_rafeel.dart';
import 'package:final_why_app/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
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
                  navigateToScreen(context,const AsKAnbaMatawisView());
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/انبا فام اسقف المنيا.jpg',
                title: "اسأل الانبا فام",
                onTap: () {
                   navigateToScreen(context,const AsKAnbaFamView());
                },
              ),
              CustomBotton(
                imageurl: 'assets/images/انبا رافائيل.jpg',
                title: "اسأل الانبا رافائيل",
                onTap: () {
                  navigateToScreen(context, const AsKAnbaRefeelView());
                },
              )
            ],
          ) // Foreground content
        ],
      ),
    );
  }
}
