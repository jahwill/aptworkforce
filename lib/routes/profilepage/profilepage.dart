import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aptworkforce/components/profilepage_clippath.dart';

import 'customListTile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double xOffset = 20;
  double yOffset = 10;
  double scalefactor = 0.0001;
  var _currentOpac = 1.0;
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF7d0552),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          ClipPath(
                            clipper: TopContainerClip(),
                            child: Container(
                              height: 240.0,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(9.0),
                              decoration: BoxDecoration(
                                color: Color(0XFF7d0552),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 35.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, bottom: 5),
                                    child: Text(
                                      ///todo:user name comes here
                                      'Amanda Esquire',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'georgia'),
                                    ),
                                  ),
                                  Text(
                                    ///todo:user email comes here
                                    'meetjahwill@gmail.com',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'georgia'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 5,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(50),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      // color: Colors.yellowAccent,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.home,
                                      size: 24.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: MediaQuery.of(context).size.width * 0.2,
                            child: InkWell(
                              onTap: () {
                                DisplayImageViewer();
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        // border: Border.all(color: Colors.white),
                                        image: DecorationImage(

                                            ///todo: user profile picture will come here
                                            image: AssetImage(
                                                'assets/images/mine.jpg'),
                                            fit: BoxFit.fill)),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          color: Color(0XFF7d0552),
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
//
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        //height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
//        color: Color(0XFF0990c4),
//        color: Colors.white,
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ProfileItem(
                                ontap: () {},
                                leading:
                                    Icon(Icons.group, color: Colors.grey[900]),
                                title: 'Team',
                                subtitle: 'My Team members'),
                            ProfileItem(
                                ontap: () {
                                  print('notifications');
                                },
                                leading: Icon(Icons.group_add,
                                    color: Colors.grey[900]),
                                title: 'Add',
                                subtitle: 'Add a new Team member'),
                            ProfileItem(
                              ontap: () {
//
                              },
                              leading:
                                  Icon(Icons.settings, color: Colors.grey[900]),
                              title: 'Settings',
                              subtitle: 'My account solve urgent issues',
                            ),
                            ProfileItem(
                                ontap: () {},
                                leading: Icon(Icons.help_outline,
                                    color: Colors.grey[900]),
                                title: 'Self Help',
                                subtitle:
                                    'Everything you need to know about NGO market'
                                    ' place'),
                            ProfileItem(
                              ontap: () {},
                              leading: Icon(Icons.fingerprint,
                                  color: Colors.grey[900]),
                              title: 'KYC',
                              subtitle: 'Complete your KYC',
                            ),
                            ProfileItem(
                              ontap: () {},
                              leading: Icon(Icons.info_outline,
                                  color: Colors.grey[900]),
                              title: 'About',
                              subtitle: 'Contact one of our agents',
                            ),
                            ProfileItem(
                                ontap: () {
                                  print('object');
                                },
                                leading:
                                    Icon(Icons.wc, color: Colors.grey[900]),
                                title: 'Partner',
                                subtitle: 'partner with an enterprise'),
                            ProfileItem(
                              ontap: () {},
                              leading: Icon(Icons.power_settings_new,
                                  color: Colors.grey[900]),
                              title: 'Logout',
                              subtitle: 'See later',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            PictureViewer(),
            // Positioned(
//              bottom: 0,
//              child: UploaderOption(),
//            )
          ],
        ),
      ),
    );
  }

  Widget PictureViewer() {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 280),
      opacity: _currentOpac,
      child: AnimatedContainer(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        duration: Duration(milliseconds: 500),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scalefactor),
        curve: Curves.fastOutSlowIn,
        decoration: BoxDecoration(
            color: Colors.black,
//            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage('assets/images/mine.jpg'),
                fit: BoxFit.contain)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                restoreViewer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15),
                child: Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15, right: 15),
              child: Icon(
                Icons.camera_alt,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

//  Widget UploaderOption() {
//    return AnimatedContainer(
//      height: 120,
//      duration: Duration(milliseconds: 260),
//      transform: Matrix4.translationValues(xOffset, yOffset, 0)
//        ..scale(scalefactor),
//      width: MediaQuery.of(context).size.width - 20,
//      decoration: BoxDecoration(
//          color: Colors.teal,
//          boxShadow: [
//            BoxShadow(
//                color: Colors.black38.withOpacity(0.0),
//                blurRadius: 0.2,
//                spreadRadius: 10)
//          ],
//          borderRadius: BorderRadius.circular(5)),
//      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.only(left: 10.0, top: 15),
//            child: Icon(
//              Icons.keyboard_backspace,
//              size: 30,
//              color: Colors.white,
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.only(left: 10.0, top: 15, right: 15),
//            child: Icon(
//              Icons.camera_alt,
//              size: 25,
//              color: Colors.white,
//            ),
//          ),
//        ],
//      ),
//    );
//  }

  restoreViewer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scalefactor = 0.0001;
      _currentOpac = 0.0;
      isShowing = false;
    });
  }

  DisplayImageViewer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scalefactor = 1;
      _currentOpac = 1.0;
      isShowing = true;
    });
  }
}
