import 'package:flutter/material.dart';


///<<<<<<<<<<<============For Custom Email Feild==============>>>>>>>>>>>>>>>>>>>>>
// ignore: must_be_immutable
class CustomEmail extends StatelessWidget {
  String? Function(String?)? onValidate;
  final String? hintText;
  final String? labelText;
   CustomEmail({super.key, this.hintText, this.labelText, required this.onValidate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.grey,
        fontFamily: 'Raleway Regular',
      ),
      cursorColor: Colors.grey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'abc123@gmail.com',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Josefin Regular',
        ),
        labelText: 'Email',
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Josefin Regular',
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 2),
          child: Icon(Icons.email_outlined),
        ),
        prefixIconColor: Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xff2E5A88),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xff2E5A88),
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
          const BorderSide(color: Colors.red, width: 2),
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontFamily: 'Josefin Regular',
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xff2E5A88), width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: onValidate,
    );
  }
}
