import 'package:clone_layout/src/const/global_const.dart';
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
      height: 60,
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
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text('Calls'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: GlobalConstUI.greyColor,
                  ),
                  title: Text('Messages'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text('Messages'),
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
                      color: GlobalConstUI.greyColor,
                    ),
                  ),
                  title: Text('Messages'),
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
