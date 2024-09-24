import 'package:final_why_app/constants.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final int maxlines ;
  final String hintline;
  final void Function(String?)? onSaved;
 
  
  const CustomTextField({super.key,  required this.maxlines, required this.hintline, this.onSaved});
   OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
            borderSide: BorderSide(
              color: color
            ),
            borderRadius: BorderRadius.circular(10)
          );
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
          if(value!.isEmpty)
          {
          return 'this Field is Empty';
          }
          else{
            return null;
          }
      },
          cursorColor: kprimeryColor,
          maxLines: maxlines,
          decoration: InputDecoration(
            hintText: hintline,
            hintStyle: const TextStyle(color:kprimeryColor),
            border:outLineBorder(Colors.black) ,
            enabledBorder: outLineBorder(Colors.black),
            focusedBorder:  outLineBorder(kprimeryColor)
          ),
        );
  }
}