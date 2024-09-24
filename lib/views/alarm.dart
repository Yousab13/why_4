import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_why_app/constants.dart';
import 'package:final_why_app/views/message_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

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
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('notification')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: kprimeryColor,
                    ));
                  } else if (snapshot.hasError) {
                    return const Center(
                        child: Text(
                      'هناك خطا ما سنعود بعد قليل',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ));
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(
                        child: Text(
                      'لا يوجد اي اشعارات',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ));
                  }
                  var notifications = snapshot.data!.docs;

                  return ListView.separated(
                    reverse: false,
                    itemCount: notifications.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 20,
                    ),
                    itemBuilder: (context, index) {
                      // Extract the title and content from the notification document
                      var notification = notifications[index];
                      var title = notification['title'] ?? 'No title';
                      var content = notification['content'] ?? 'No content';
                       
                      return GestureDetector(
                        onTap: () {
                        
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: DetailScreen(
                                title: title,
                                content: content),
                                 
                            withNavBar:
                                false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(149, 112, 88, 88),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                content,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
