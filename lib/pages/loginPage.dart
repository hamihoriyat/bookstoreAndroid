import 'package:flutter/material.dart';
import 'package:bookstore/component/formContainer.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
        Column(
          children: <Widget>[
              Container(
              padding: EdgeInsets.only(top: 40.0),
        child: Center(
          child: Image.asset(
            'assets/images/loginpageLogo/logo.png',
            scale: 6.0,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(bottom: 10.0),
          child: Center(

            child: new Text(

              'ورود کاربر',
              style: TextStyle(
                  fontFamily: 'IRANYekan',
                  fontWeight: FontWeight.w900,
                  fontSize: 35.0,
                  color: Color(0xffff701f)),
            ),
          )),
      Container(
        child: Center(
          child: new FormContainer(),
        ),
        ),

        ]),
    );
  }
}
