import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final TextEditingController controller;
 // final IconData icon;

  InputField({
    this.hint,
    this.obscure,
    this.controller
   // this.icon
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new TextFormField(
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.black,
          height: 0.1,

        ),
        decoration: new InputDecoration(


//            icon: new Icon(
//              icon,
//              color: Colors.grey,
//            ),

          //border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff40833c))),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffd97d05))),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey,fontFamily: "IRANYekan",fontSize: 12.0,fontWeight: FontWeight.w600,),
//          contentPadding: const EdgeInsets.only(
//            top: 15,right: 0,bottom: 20,left: 5
//          ),

        ),
      ),
    );
  }
}