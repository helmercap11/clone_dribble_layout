import 'package:clone_layout/src/const/global_const.dart';
import 'package:clone_layout/src/screens/login_page/login_page.dart';
import 'package:flutter/material.dart';

class BottomSheetButtom extends StatelessWidget {
  const BottomSheetButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 240,
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 60),
        decoration: BoxDecoration(
          color: GlobalConstUI.yellowColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 60),
              alignment: Alignment.center,
              child: Text(
                "GET STARTED",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
