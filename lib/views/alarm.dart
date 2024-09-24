import 'package:final_why_app/widgets/notification_alarm_stream.dart';
import 'package:flutter/material.dart';
class AlarmView extends StatelessWidget {
  const AlarmView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/st.pavlos.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: StreamAlarmWidget()
            ),
          ],
        ),
      ),
    );
  }
}
