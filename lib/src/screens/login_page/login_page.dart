import 'package:clone_layout/src/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:clone_layout/src/const/global_const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _homepage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      Size sizeDevice = MediaQuery.of(context).size;
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 95),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizeDevice.height / 8,
                ),
                Image.asset("assets/images/initial/laundry.png")
              ],
            ),
          )
        ],
      );
    }

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
                    child: logo(),
                  )
                ],
              ),
            ),
            Padding(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    child: Container(
                      child: ListView(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(height: 35,),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: MediaQuery.of(context)
                                     .viewInsets.bottom
                                  ),
                                  child: Container(
                                    child: _button(
                                      Icon(Icons.phone_android, color: GlobalConstUI.yellowColor,),
                                      "Sign in with mobile",
                                      Colors.white,
                                      Colors.white, 
                                       Colors.white,
                                      Colors.black,
                                      _homepage,
                                      
                                    ),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width ,
                                  ),
                                ),
                                SizedBox(height: 20,),

                                Text("OR",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black,
                                 ),
                                ),

                                SizedBox(height: 25,),

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: MediaQuery.of(context)
                                     .viewInsets.bottom
                                  ),
                                  child: Container(
                                    child: _button(
                                      Icon(FontAwesomeIcons.facebookF, color: Colors.white,),
                                      "Sign in with facebook",
                                      Colors.white,
                                      Colors.white, 
                                      GlobalConstUI.blueColor,
                                      Colors.white,
                                      _homepage,
                                      
                                    ),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width ,
                                  ),
                                ),

                                SizedBox(height: 15,),

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: MediaQuery.of(context)
                                     .viewInsets.bottom
                                  ),
                                  child: Container(
                                    child: _button(
                                      Icon(FontAwesomeIcons.google, color: Colors.white,),
                                      "Sign in with google",
                                      Colors.white,
                                      Colors.white, 
                                      GlobalConstUI.blueAccent,
                                      Colors.white,
                                      _homepage,
                                      
                                    ),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width ,
                                  ),
                                ),
                              

                            /*Align(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    bottom: MediaQuery.of(context)
                                     .viewInsets.bottom
                                  ),
                                    child: RaisedButton(
                                    color: Colors.white,
                                    splashColor: Colors.white,
                                    highlightColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                       side: BorderSide(color: GlobalConstUI.primaryColo),
                                      ),
                                    hoverElevation: 0.0,
                                    elevation: 0.0,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 12,0, 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 60),
                                              child: Icon(Icons.phone_android, color: GlobalConstUI.yellowColor,)
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: Text("Sign in with mobile",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                              ),),
                                            )
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                            ),*/
                              ],
                            ),
                          )
                        ],
                      ),
                      height: MediaQuery.of(context).size.height / 1.1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(top: 300)),
          ],
        ),
      ),
    );
  }
}

Widget _button(Icon icon, String text, Color splashColor, Color highligthColor,
    Color fillColor, Color textColor, void function()) {
  return RaisedButton(
      hoverElevation: 0.0,
      splashColor: splashColor,
      highlightColor: highligthColor,
      elevation: 0.0,
      color: fillColor,
      shape:
          RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
            side: BorderSide(color: GlobalConstUI.primaryColo),
            ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child:  icon,
          ),
         
          Padding(
            padding: const EdgeInsets.only(left: 45.0),
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold
              ),
            ),
            
          ),
          
        ],
        
      ),
      
      onPressed: () {
        function();
      });
}
