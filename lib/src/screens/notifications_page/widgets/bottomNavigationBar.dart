import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/home_page/home_page.dart';
import 'package:clone_layout/src/screens/notifications_page/notifications_page.dart';
import 'package:flutter/material.dart';

class BootomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0.0, 1.00), //(x,y)
              blurRadius: 4.00,
              color: GlobalConstUI.primaryColo,
              spreadRadius: 1.00),
        ],
      ),
      height: 70,
      child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0)),
          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: GlobalConstUI.primaryColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: 2,

              // new
              items: [
                new BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: GlobalConstUI.greyColor,
                    ),
                  ),
                  title: Text('home'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: GlobalConstUI.greyColor,
                  ),
                  title: Text('menu'),
                ),
                new BottomNavigationBarItem(
                  icon: Container(
                    child: CircleAvatar(
                      backgroundColor: GlobalConstUI.yellowColor,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text('add'),
                ),
                new BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationsPage()));
                    },
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('notif'),
                ),
                new BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      size: 30,
                      color: GlobalConstUI.greyColor,
                    ),
                    title: Text('Profile'))
              ],
            ),
          )),
    );
  }
}
