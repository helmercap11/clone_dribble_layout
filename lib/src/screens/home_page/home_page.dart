import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/home_page/widgets/custom_categoryBox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalConstUI.primaryColo,
        body: SafeArea(
            child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                  backgroundColor: GlobalConstUI.blueAccent,
                                  backgroundImage: AssetImage(
                                      "assets/images/avatar/avatarIcon.png"),
                                ),
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 35, left: 190.0),
                                    child: IconButton(
                                        icon: Icon(
                                          FontAwesomeIcons.cog,
                                          size: 30.0,
                                          color: GlobalConstUI.primaryColor,
                                        ),
                                        onPressed: () {})),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: GlobalConstUI.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Helmer Capassola",
                            style: TextStyle(
                              color: GlobalConstUI.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCategoryBox(
                            image: "assets/images/Home/WashingMachine.png",
                            title: "Wash e Iron",
                          ),
                          CustomCategoryBox(
                            image: "assets/images/Home/ClothesIron.png",
                            title: "Ironlng",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCategoryBox(
                            image: "assets/images/Home/DryingClothes.png",
                            title: "Dry Cleaning",
                          ),
                          CustomCategoryBox(
                            image: "assets/images/Home/Seam.png",
                            title: "Darning",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),

                //Image.asset("assets/images/initial/laundry.png"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            /*Container(
              child: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 10.0,
                elevation: 4.0,
                color: GlobalConstUI.primaryColor,
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: GlobalConstUI.greyColor,
                      onPressed: () {},
                    ),
                    CircleAvatar(
                      backgroundColor: GlobalConstUI.yellowColor,
                        child: Container(
                            child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () {},
                    ))),
                    IconButton(
                      icon: Icon(Icons.notifications),
                      color: GlobalConstUI.greyColor,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      color: GlobalConstUI.greyColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),*/
             Container(
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
                        icon: Icon(
                          Icons.notifications,
                          size: 30,
                          color: GlobalConstUI.greyColor,
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

        ),
          ],
        )));
  }
}
