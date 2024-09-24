import 'package:final_why_app/pdfViews/his_life.dart';
import 'package:final_why_app/pdfViews/his_work.dart';
import 'package:final_why_app/pdfViews/message_felmon.dart';
import 'package:final_why_app/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class StPolesView extends StatelessWidget {
  const StPolesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 20,
              right: 20,
            ),
            child: Column(children: [
              CustomButtonSend(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HisLife()));
                },
                title:'حياته',
              ),
             const SizedBox(height: 30,),
              CustomButtonSend(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HisWork()));
                },
                title: 'رحلاته',
              ),
               const SizedBox(height: 30,),
              CustomButtonSend(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageFelmon()));
                },
                title: 'دراسة في رسالة فليمون',
              )
            ])),
      ),
    );
  }
}
