import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aptworkforce/exports.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF7d0552).withOpacity(0.4),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: 20,
            left: -90,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  color: Color(0XFFb93b8f), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: -100,
            left: -20,
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  color: Color(0XFFb93b8f), shape: BoxShape.circle),
            ),
          ),

          Positioned(
            bottom: 10,
            right: -100,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  color: Color(0XFFb93b8f), shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -20,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  color: Color(0XFFb93b8f), shape: BoxShape.circle),
            ),
          ),

//                Container(
//                  height: 200,
//                  width: MediaQuery.of(context).size.width,
//                  decoration: BoxDecoration(
//                      gradient: LinearGradient(
////                        begin: Alignment.center,
////                        end: Alignment.centerRight,
//                          colors: [
//                        Color(0XFF1414ff),
//                        Color(0XFF1414ff),
//                        Color(0XFF1414ff).withOpacity(0.9),
//                        Colors.deepPurpleAccent
//                      ])),
//                  child: Center(
//                      child: Padding(
//                    padding: const EdgeInsets.only(bottom: 60.0),
//                    child: Text(
//                      'Login',
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold),
//                    ),
//                  )),
//                ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width - 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF7d0552),
                        fontSize: 35,
                        fontFamily: 'quicksand'),
                  )),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextField(
                    autofocus: true,
                    minLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'quicksand',
                        letterSpacing: 2),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        hintText: 'username',
                        contentPadding: EdgeInsets.only(left: 5),
                        hintStyle: TextStyle(
                          fontFamily: 'quicksand',
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'quicksand',
                        letterSpacing: 2),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'quicksand',
                        ),
                        contentPadding: EdgeInsets.only(left: 5)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: InkWell(
                      onTap: () {
                        print('object');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Forgot your Password ?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'quicksand'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'quicksand'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        ///todo: your login logic code comes here
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      },
                      child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Color(0XFF7d0552),
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'quicksand'),
                              ),
                              Icon(
                                ///todo:this icon will be replace by a
                                /// loader at the click of login button
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      )),
    );
  }
}

class TopContainerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.15, 65, size.width * 0.3, 140);
    path.quadraticBezierTo(
        size.width * 0.44, size.height - 5, size.width * 0.63, 130);
    path.quadraticBezierTo(
        size.width - (size.width * 0.236), 90, size.width, 80);

    path.lineTo(size.width, size.height * 0.66);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

///the second clip comes here
class BottomContainerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    var sw = size.width;
    var sh = size.height;
    path.moveTo(0, 85.0);

    path.quadraticBezierTo(sw * 0.14, 18, sw * 0.25, 85);
    path.quadraticBezierTo(sw * 0.37, sh - 117, sw * 0.54, 75);
    path.quadraticBezierTo(sw * 0.68, 15, sw, 20);

    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
