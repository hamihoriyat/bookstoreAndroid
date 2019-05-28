import 'package:flutter/material.dart';
import 'package:bookstore/component/inputField.dart';
import 'package:bookstore/network/networkRequest.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:path/path.dart';

class FormContainer extends StatelessWidget {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  //final bool setLogin=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          new InputField(
            hint: "نام کاربری",
            obscure: false,
            controller: _usernameController,
          ),
          Container(
            padding: EdgeInsets.only(top: 8.0),
          ),
          new InputField(
            hint: "رمز عبور",
            obscure: true,
            controller: _passwordController,
          ),
          Container(
            child: new Text("رمز عبورم را فراموش کرده ام!", style: TextStyle(
                color: Colors.grey,
                fontFamily: "IRANYekan",
                fontWeight: FontWeight.w700),),
          ),
          Container(
            padding: EdgeInsets.only(top: 50.0),
            child: MaterialButton(

              minWidth: 200.0,
              color: Color(0xff40833c),
              child: Text("ورود", style: TextStyle(fontWeight: FontWeight.w700,
                  fontFamily: "IRANYekan",
                  color: Colors.white),),
              onPressed: () {
               checkLogin(context);


              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1.0),
            child: MaterialButton(

              minWidth: 200.0,
              color: Color(0xffff9914),
              child: Text("ثبت نام", style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "IRANYekan",
                  color: Colors.white)),
            ),
          )

        ],
      ),
    );
  }

  checkLogin(context) async{
    Map response=await (new NetworkRequest()).post("http://185.237.85.43:3000/users/login",{
      "username":_usernameController.text,
      "password":_passwordController.text
    });
    if(response["status"]=="login success"){
     Navigator.pushReplacementNamed(context,"/homePage");
    }
    else{
      print("login failed");
    }

    //print(response);
}

}