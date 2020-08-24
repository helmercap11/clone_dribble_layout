import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/notifications_page/widgets/bottomNavigationBar.dart';
import 'package:clone_layout/src/screens/notifications_page/widgets/notifications_tile.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalConstUI.primaryColo,
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/10.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0D5C46),
                    Color(0xFF0D5C46)
                  ],
                ),
              ),
            ),
            SizedBox(height: 35,),
            Container(
              child: Text(
                "Notifications",
                style: TextStyle(
                  color: GlobalConstUI.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
           // SizedBox(height: 20,),
            Container(
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: List.generate(5, (i) => NotificationsTile())
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BootomNavigationBar(),
    );
  }
}