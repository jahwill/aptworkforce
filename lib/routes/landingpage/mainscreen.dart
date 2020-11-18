//import 'package:flutter/material.dart';
//import 'package:finmotech/exports.dart';
//
//class MainScreen extends StatefulWidget {
//  @override
//  _MainScreenState createState() => _MainScreenState();
//}
//
//class _MainScreenState extends State<MainScreen> {
//  double xOffetMainscreen = 0;
//  double yOffsetMainscreen = 0;
//  double scaleFactore = 1;
//  bool isScreenOpen = false;
////  setPo() {
////    setState(() {
////      xOffetMainscreen = 0;
////      yOffsetMainscreen = 0;
////      scaleFactore = 1;
////      isScreenOpen = false;
////    });
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    return AnimatedContainer(
//      duration: Duration(milliseconds: 250),
//      transform:
//          Matrix4.translationValues(xOffetMainscreen, yOffsetMainscreen, 0)
//            ..scale(scaleFactore),
//
//      ///this is the home page Screen
//      height: MediaQuery.of(context).size.height,
//      width: MediaQuery.of(context).size.width,
//      decoration: BoxDecoration(color: Colors.white),
////              color: Color(0XFF002642),
//      child: SingleChildScrollView(
//        scrollDirection: Axis.vertical,
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 40,
//              width: MediaQuery.of(context).size.width,
//              color: Color(0XFF0000ec),
//              child: Row(
//                children: <Widget>[
//                  isScreenOpen == false
//                      ? IconButton(
//                          icon: Icon(
//                            Icons.menu,
//                            color: Colors.white,
//                          ),
//                          onPressed: () {
//                            setState(() {
//                              xOffetMainscreen =
//                                  MediaQuery.of(context).size.width * 0.5;
////                              yOffsetMainscreen =
////                                  MediaQuery.of(context).size.height * 0.1;
//                              scaleFactore = 0.9;
//                              isScreenOpen = true;
//                            });
//                          })
//                      : IconButton(
//                          icon: Icon(
//                            Icons.navigate_before,
//                            color: Colors.white,
//                          ),
//                          onPressed: () {
//                            setState(() {
//                              xOffetMainscreen = 0;
//                              yOffsetMainscreen = 0;
//                              scaleFactore = 1;
//                              isScreenOpen = false;
//                            });
//                          }),
//                  Expanded(
//                      child: Center(
//                          child: Text(
//                    'Cards',
//                    style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
//                        fontSize: 21),
//                  )))
//                ],
//              ),
//            ),
//            Container(
//              height: 210,
//              width: MediaQuery.of(context).size.width,
//              child: CarouselSlider1(),
//              decoration: BoxDecoration(
//                  gradient: SweepGradient(
////                        begin: Alignment.centerLeft,
////                        end: Alignment.bottomRight,
//                colors: [
//                  Color(0XFF0000c4),
//                  Colors.white.withOpacity(0.9),
//                  Color(0XFF0000c4),
//                  Colors.white.withOpacity(0.9),
//                  Color(0XFF0000c4)
//                ],
//              )),
//            ),
//            Container(
//              height: 70.0,
//              child: SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
//                child: Row(
//                  children: <Widget>[
//                    Container(
//                      height: MediaQuery.of(context).size.height,
//                      width: MediaQuery.of(context).size.width * 0.5,
//                      color: Color(0XFF00008a),
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Text(
//                            'Balance'.toUpperCase(),
//                            style: TextStyle(
//                                color: Colors.white,
////                                    fontWeight: FontWeight.bold,
//                                fontSize: 14,
//                                fontFamily: 'hindi'),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(top: 5.0),
//                            child: Text(
//                              '\$1345',
//                              style: TextStyle(
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 28,
//                                  fontFamily: 'hindi'),
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                    Container(
//                      height: MediaQuery.of(context).size.height,
//                      width: MediaQuery.of(context).size.width * 0.5,
//                      color: Color(0XFF0000d8),
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Text(
//                            'Bonus'.toUpperCase(),
//                            style: TextStyle(
//                                color: Colors.white,
////                                    fontWeight: FontWeight.bold,
//                                fontSize: 14,
//                                fontFamily: 'hindi'),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(top: 5.0),
//                            child: Text(
//                              '\$21',
//                              style: TextStyle(
//                                  color: Colors.white,
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 28,
//                                  fontFamily: 'hindi'),
//                            ),
//                          )
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Container(
//              color: Colors.white,
//              child: Column(
//                children: <Widget>[
//                  Material(
//                    color: Colors.transparent,
//                    child: InkWell(
//                      onTap: () {},
//                      child: _service(
//                          Icon(Icons.account_balance_wallet,
//                              color: Colors.black87),
//                          Text('E-Wallet')),
//                    ),
//                  ),
//                  Material(
//                    color: Colors.transparent,
//                    child: InkWell(
//                      onTap: () {},
//                      child: _service(
//                          Icon(
//                            Icons.local_airport,
//                            color: Colors.black87,
//                          ),
//                          Text('Air Ticket')),
//                    ),
//                  ),
//                  Material(
//                    color: Colors.transparent,
//                    child: InkWell(
//                        onTap: () {},
//                        child: _service(
//                            Icon(Icons.payment, color: Colors.black87),
//                            Text('Pay bills'))),
//                  ),
//                  Material(
//                    color: Colors.transparent,
//                    child: InkWell(
//                        onTap: () {},
//                        child: _service(
//                            Icon(Icons.attach_money, color: Colors.black87),
//                            Text('Deposit'))),
//                  ),
//                  Material(
//                    color: Colors.transparent,
//                    child: InkWell(
//                        onTap: () {},
//                        child: _service(
//                            Icon(Icons.shopping_basket, color: Colors.black87),
//                            Text('Martket'))),
//                  ),
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget _service(Icon icon, Text text) {
//    return Container(
//      width: MediaQuery.of(context).size.width,
//      child: ListTile(
//        leading: icon,
//        title: text,
//      ),
//    );
//  }
//}
