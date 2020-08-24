import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/clothers_page/clothers_page.dart';
import 'package:clone_layout/src/screens/home_page/widgets/bottomNavigationBar.dart';
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ClothersPage()));
                            },
                            child: CustomCategoryBox(
                              image: "assets/images/Home/DryingClothes.png",
                              title: "Dry Cleaning",
                            ),
                          ),
                          CustomCategoryBox(
                            image: "assets/images/Home/Seam.png",
                            title: "Darning",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //BootomNavigationBar(),
          ],
        )),
        bottomNavigationBar: BootomNavigationBar(),
        );
  }
}
