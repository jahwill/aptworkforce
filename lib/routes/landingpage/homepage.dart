import 'package:aptworkforce/routes/profilepage/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:aptworkforce/exports.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffetMainscreen = 0;
  double yOffsetMainscreen = 0;
  double scaleFactore = 1;
  bool isScreenOpen = false;
  bool isScreenhalfOpen = false;

  bool _pointerisIgnored = false;
  double xxOffetMainscreen = 0;
  double yyOffsetMainscreen = 0;
  double scaleFactore2 = 1;
  bool isScreenOpen2 = false;
  bool isPurseFullyOpen = false;
  bool _pointerisIgnored2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF7d0552),
        body: SafeArea(
            child: Container(
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 165,
                      margin: EdgeInsets.only(left: 5, top: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF7d0252))),
                      child: Center(
                          child: Text(
                        'Apt WorkForce',
                        style: TextStyle(
                          color: Color(0XFF7d0552),
                          fontSize: 20,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    ListTile(
                        onTap: () {
                          MinimizePursePage();
                          restorePage();
                        },
                        leading: Icon(
                          Icons.home,
                          color: isScreenhalfOpen == true
                              ? Color(0XFF7d0552)
                              : Colors.black,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'quicksand',
                              fontWeight: FontWeight.bold,
                              color: isScreenhalfOpen == true
                                  ? Color(0XFF7d0552)
                                  : Colors.black),
                        )),
                    ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProfilePage()));
                          restorePage();
                          MinimizePursePage();
                        },
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Dashboard',
                          style: TextStyle(
                            fontFamily: 'quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        onTap: () {
                          print('notifications');
                        },
                        leading: Icon(Icons.notifications, color: Colors.black),
                        title: Text(
                          'notifications',
                          style: TextStyle(
                            fontFamily: 'quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ListTile(
                        onTap: () {
                          MinimizePage();
                          showPursePage();
                        },
                        leading: Icon(Icons.account_balance_wallet,
                            color: isScreenOpen2 == true
                                ? Color(0XFF7d0552)
                                : Colors.black),
                        title: Text(
                          'Purse',
                          style: TextStyle(
                            fontFamily: 'quicksand',
                            fontWeight: FontWeight.bold,
                            color: isScreenOpen2 == true
                                ? Color(0XFF7d0552)
                                : Colors.black,
                          ),
                        )),
                    ListTile(
                        leading: Icon(Icons.history, color: Colors.black),
                        title: Text(
                          'History',
                          style: TextStyle(
                            fontFamily: 'quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ),

              ///this section  is for the mainscreen container
              AnimatedContainer(
                duration: Duration(milliseconds: 350),
                curve: Curves.fastOutSlowIn,
                transform: Matrix4.translationValues(
                    xOffetMainscreen, yOffsetMainscreen, 0)
                  ..scale(scaleFactore),

                ///this is the home page Screen
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 10,
                      spreadRadius: 6,
                      offset: Offset(0, 1))
                ]),

                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0XFF7d0552),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            isScreenOpen == false
                                ? Material(
                                    color: Colors.transparent,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            xOffetMainscreen =
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.49;
                                            yOffsetMainscreen = 0;
                                            //  scaleFactore = 0.9;
                                            isScreenOpen = true;
                                            isScreenhalfOpen = true;
                                            _pointerisIgnored = true;
                                          });
                                        }),
                                  )
                                : Material(
                                    color: Colors.transparent,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.keyboard_backspace,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          restorePage();
                                        }),
                                  ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey[100],
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Container(
                                      height: 140,
                                      width: MediaQuery.of(context).size.width -
                                          30,
                                      margin:
                                          EdgeInsets.only(right: 5, left: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0XFF008080),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Column(
                                        //crossAxisAlignment:
                                        // CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                              child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0, bottom: 10),
                                            child: Text(
                                              'Main Purse',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 25),
                                            ),
                                          )),
                                          Text(
                                            'NGN 50,000,000,000,000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Quicksand',
                                                fontSize: 25),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Container(
                                      height: 140,
                                      width: MediaQuery.of(context).size.width -
                                          30,
                                      margin:
                                          EdgeInsets.only(right: 10, left: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0XFF008080),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Column(
                                        //crossAxisAlignment:
                                        // CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                              child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0, bottom: 10),
                                            child: Text(
                                              'Savings',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 25),
                                            ),
                                          )),
                                          Text(
                                            'NGN 20,000,000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Quicksand',
                                                fontSize: 25),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -30,
                            child: Container(
                              height: 85,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Color(0XFF7d0052),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(1, 3),
                                        blurRadius: 8,
                                        spreadRadius: 1)
                                  ],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(3),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        ServicesPage()));
                                        restorePage();
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Container(
                                                height: 40,
                                                width: 45,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Image.asset(
                                                    'assets/icons/service_box.png',
                                                    color: Colors.grey[300],
                                                  ),
                                                )),
                                            Text(
                                              'Services',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(3),
                                      onTap: () {},
                                      child: Container(
                                        height: 70,
                                        width: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Container(
                                                height: 40,
                                                width: 45,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Image.asset(
                                                    'assets/icons/shoping_cart.png',
                                                    color: Colors.grey[300],
                                                  ),
                                                )),
                                            Text(
                                              'Market',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          restorePage();
                        },
                        child: IgnorePointer(
                          ignoring: _pointerisIgnored,
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
//                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                        Color(0XFF008080),
                                        Image.asset(
                                          'assets/icons/withdraw.png',
                                          color: Colors.white,
                                        ),
                                        Text('Withdraw',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Quicksand',
                                            )),
                                      )),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: _service(
                                        Color(0XFF005080),
                                        Image.asset(
                                          'assets/icons/send_money_1.png',
                                          color: Colors.white,
                                        ),
                                        Text('Send Money',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Quicksand',
                                            ))),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                          Color(0XFFc04800),
                                          Image.asset(
                                            'assets/icons/buy_icon.png',
                                            color: Colors.white,
                                          ),
                                          Text('Pay bills',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Quicksand',
                                              )))),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {},
                                      child: _service(
                                          Color(0XFF4B0082),
                                          Image.asset(
                                            'assets/icons/deposit_1.png',
                                            color: Colors.white,
                                          ),
                                          Text('Deposit',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Quicksand',
                                              )))),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 45,
                                  color: Colors.grey[50],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text('Recent Transactions',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Quicksand',
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Icon(Icons.navigate_next),
                                      )
                                    ],
                                  ),
                                )
                                // CarouselSlider1(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              ///this section below is for the Purse screen container
              isScreenOpen2 == false
                  ? Container()
                  : AnimatedContainer(
                      duration: Duration(milliseconds: 350),
                      curve: Curves.fastOutSlowIn,
                      transform: Matrix4.translationValues(
                          xxOffetMainscreen, yyOffsetMainscreen, 0)
                        ..scale(scaleFactore2),

                      ///this is the Purse page Screen
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.07),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 1))
                      ]),

                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0XFF7d0552),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  isPurseFullyOpen == true
                                      ? Material(
                                          color: Colors.transparent,
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.menu,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  xxOffetMainscreen =
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.49;
                                                  yyOffsetMainscreen = 0;
                                                  isScreenOpen2 = true;
                                                  isPurseFullyOpen = false;
                                                  _pointerisIgnored2 = true;
                                                });
                                              }),
                                        )
                                      : Material(
                                          color: Colors.transparent,
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.keyboard_backspace,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {
                                                restorePursePage();
                                              }),
                                        ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Container(
                                  height: 190,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey[100],
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 40.0),
                                        child: Text('Purse Summary',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Quicksand',
                                                fontSize: 22)),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: -30,
                                  child: Container(
                                    height: 120,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    decoration: BoxDecoration(
                                        color: Color(0XFF7d0052),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(1, 3),
                                              blurRadius: 8,
                                              spreadRadius: 1)
                                        ],
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            onTap: () {
                                              ///this is use to refresh the page
                                              ///for update
                                            },
                                            child: Container(
                                              height: 100,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  color: Color(0XFF005080),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  'main Purse',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            onTap: () {
                                              ///this is use to refresh the page
                                              ///for update
                                            },
                                            child: Container(
                                              height: 100,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  color: Colors.indigo[900],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  'Bonus',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                                onTap: () {
                                  restorePage();
                                },
                                child: IgnorePointer(
                                  ignoring: _pointerisIgnored2,
                                  child: Container(
//                                    height: 280,
                                    width:
                                        MediaQuery.of(context).size.width - 5,
                                    margin: EdgeInsets.only(
                                      top: 40,
                                    ),
                                    color: Colors.grey[50],

                                    ///todo:list of purse transactions summary are listed below
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        )));
  }

  Widget _service(
    Color color,
    Image image,
    Text text,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: image,
            )),
        title: text,
      ),
    );
  }

  restorePage() {
    setState(() {
      xOffetMainscreen = 0;
      yOffsetMainscreen = 0;
      scaleFactore = 1;
      isScreenOpen = false;
      isScreenhalfOpen = false;
      _pointerisIgnored = false;
    });
  }

  MinimizePage() {
    setState(() {
      xOffetMainscreen = MediaQuery.of(context).size.width;
      yOffsetMainscreen = MediaQuery.of(context).size.height;
      scaleFactore = 0.01;
      isScreenOpen = true;
      isScreenhalfOpen = false;
      _pointerisIgnored = false;
    });
  }

  MinimizePursePage() {
    setState(() {
      xxOffetMainscreen = MediaQuery.of(context).size.width;
      yyOffsetMainscreen = MediaQuery.of(context).size.height;
      scaleFactore2 = 0.01;
      isScreenOpen2 = false;
      isPurseFullyOpen = false;
      _pointerisIgnored2 = false;
    });
  }

  restorePursePage() {
    setState(() {
      xxOffetMainscreen = 0;
      yyOffsetMainscreen = 0;
      scaleFactore2 = 1;
      isScreenOpen2 = true;
      isPurseFullyOpen = true;
      _pointerisIgnored2 = false;
    });
  }

  showPursePage() {
    setState(() {
      xxOffetMainscreen = MediaQuery.of(context).size.width * 0.5;
      yyOffsetMainscreen = 0;
      scaleFactore2 = 1;
      isScreenOpen2 = true;
      isPurseFullyOpen = false;
      _pointerisIgnored2 = true;
    });
  }
}
