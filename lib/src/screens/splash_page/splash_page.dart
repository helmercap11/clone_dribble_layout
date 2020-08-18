import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/splash_page/widgets/botto_sheet.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Size sizeDevice = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalConstUI.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: sizeDevice.height /8,),
                  Image.asset("assets/images/initial/laundry.png"),
                  SizedBox(height: 30,),
                  Center(
                      child: Text(
                      "Laundry App",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.bold
                       ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Text(
                      "Get ready to make your life easy with single click off app, which makes laundry thinks handle better.",
                      style: TextStyle(
                        color: Colors.white,
                        //fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            )
          ],
        )
      ),
      bottomSheet: BottomSheetButtom(),
    );
  }
}