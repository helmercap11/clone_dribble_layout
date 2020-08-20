import 'package:clone_layout/src/const/global_const.dart';
import 'package:flutter/material.dart';

class CustomCategoryBox extends StatelessWidget {
  final String image, title;

  const CustomCategoryBox({Key key, this.image, this.title});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: GlobalConstUI.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Image.asset(
            image,
            width: 70,
            height: 70,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title ?? "",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
