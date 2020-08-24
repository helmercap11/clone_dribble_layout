import 'package:clone_layout/src/const/global_const.dart';
import 'package:flutter/material.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
                    Container(
                      width: double.infinity,
                      height: 75,
                      margin: EdgeInsets.only(right: 20, bottom: 10, left: 20),
                      decoration: BoxDecoration(
                        color: GlobalConstUI.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                  backgroundColor: GlobalConstUI.blueCol,
                                  child: Icon(Icons.notifications_active, color: Colors.black, size: 30,),
                                ),
                              ),
                            ) 
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Get 4000 OFF on Bulk Order Products",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 10
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    margin: EdgeInsets.only(right: 95, top: 10),
                                    child: Text(
                                      "10 Oct 2019 7:00 PM",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: GlobalConstUI.primaryColo
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          )
                        ],
                      ),
                    )
                  ],
      ),
    );
  }
}
