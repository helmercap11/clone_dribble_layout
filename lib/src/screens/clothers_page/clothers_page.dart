import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/clothers_page/widgets/bottomNavigationBar.dart';
import 'package:clone_layout/src/screens/clothers_page/widgets/clothers_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClothersPage extends StatefulWidget {
  @override
  _ClothersPageState createState() => _ClothersPageState();
}

class _ClothersPageState extends State<ClothersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFF0D5C46),
                Color(0xFF0D5C46),
              ])),
              child: Column(
                children: [
                  Align(
                    child: Container(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.angleDoubleLeft,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 55, left: 40.0),
                                  child: Text(
                                    "Add Details",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    child: Container(
                      child: Container(
                        child: ClothersTile(),
                      ),
                      height: MediaQuery.of(context).size.height / 1.1,
                      width: MediaQuery.of(context).size.width,
                      color: GlobalConstUI.primaryColo,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(top: 100)),
                Container(
                  padding: EdgeInsets.only(top: 580), 
                  child: BootomNavigationBar(),
                )
                
          ],
        ),
      ),
    );
  }
}
