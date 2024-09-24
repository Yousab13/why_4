import 'package:final_why_app/constants.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomBotton extends StatelessWidget {
  final String title,imageurl;
void Function()? onTap;

   CustomBotton({super.key, required this.title, required this.imageurl ,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin:const EdgeInsets.all(20),
          padding: const EdgeInsets.only(right: 8),
          height: 60,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
          color: kprimeryColor,
          borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
           children: [
            CircleAvatar(backgroundImage: 
            AssetImage(imageurl),),
           const SizedBox(width: 40,),
            Text(title ,
            style: const TextStyle(
              color:Color.fromRGBO(0, 0, 0, 1),
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
            ),
          
           ]
          )
        ),
      ),
    );
  }
}