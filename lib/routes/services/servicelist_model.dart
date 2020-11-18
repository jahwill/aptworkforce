import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemsModel extends StatelessWidget {
  final Function ontap;
  final String title;
  final String subtitle;
  dynamic leading;

  ListItemsModel(
      {@required this.ontap,
      @required this.title,
      @required this.subtitle,
      @required this.leading});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 65.0,
          padding: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
              //color: Colors.pink,
              ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
//                  border: Border.all(color: Color(0XFF005080)),
                    shape: BoxShape.circle,
//                      borderRadius: BorderRadius.circular(50)
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: leading,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 0.0, bottom: 2.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 11.0,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
