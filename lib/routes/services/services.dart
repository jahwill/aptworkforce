import 'package:aptworkforce/exports.dart';
import 'package:aptworkforce/routes/services/servicelist_model.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF7d0552),
          title: Text(
            'Services page',
            style: TextStyle(fontFamily: 'quicksand'),
          ),
        ),
        body: SafeArea(
          child: Container(
              child: Container(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
//        color: Color(0XFF0990c4),
//        color: Colors.white,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListItemsModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/deposit_1.png',
                      color: Color(0XFF005080),
                    ),
//                        Icon(Icons.account_balance, color: Colors.grey[900]),
                    title: 'Deposit',
                    subtitle: 'Deposite cash straight'),
                ListItemsModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/power.png',
                      color: Color(0XFF005080),
                    ),
                    title: 'Power',
                    subtitle:
                        'pay for electricity bill from the comfort of your home'),
                ListItemsModel(
                  ontap: () {
//
                  },
                  leading: Image.asset(
                    'assets/icons/deposit_1.png',
                    color: Color(0XFF005080),
                  ),
                  title: 'Buy Airtime',
                  subtitle: 'Buy airtime from your local purse',
                ),
                ListItemsModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/loan2.png',
                      color: Color(0XFF005080),
                    ),
                    title: 'Loan',
                    subtitle: 'Apply for loan today'),
                ListItemsModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/gas.png',
                    color: Color(0XFF005080),
                  ),
                  title: 'Gas',
                  subtitle: 'Pay for your Fuel and Energy feel',
                ),
//                ListItemsModel(
//                  ontap: () {},
//                  leading: Image.asset(
//                    'assets/icons/deposit_1.png',
//                    color: Color(0XFF005080),
//                  ),
//                  title: 'About',
//                  subtitle: 'Contact one of our agents',
//                ),
//                ListItemsModel(
//                    ontap: () {
//                      print('object');
//                    },
//                    leading: Image.asset('assets/icons/deposit_1.png',
//                        color: Color(0XFF005080)),
//                    title: 'Partner',
//                    subtitle: 'partner with an enterprise'),
//                ListItemsModel(
//                  ontap: () {},
//                  leading: Image.asset(
//                    'assets/icons/deposit_1.png',
//                    color: Color(0XFF005080),
//                  ),
//                  title: 'Logout',
//                  subtitle: 'See later',
//                )
              ],
            ),
          )),
        ));
  }
}
