import 'package:final_why_app/functions/nav_function.dart';
import 'package:final_why_app/views/ask_anba_palve.dart';
import 'package:final_why_app/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class DayOneView extends StatelessWidget {
  const DayOneView({super.key});
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
                imageurl: 'assets/images/anba pavly.jpg',
                title: "اسأل الانبا بافلي",
                onTap: () {
                  navigateToScreen(context, const AsKAnbaPalveView());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
