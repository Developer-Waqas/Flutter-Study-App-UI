import 'package:coaching_center_ui/Screens/Login%20Screen/reset_password.dart';
import 'package:flutter/material.dart';

import '../../Common Widgets/custom_emailFeild.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  ///<<<<<<<<<<<==========Password Key==========>>>>>>>>>>>
  final GlobalKey<FormState> _passFormKey1 = GlobalKey<FormState>();

  ///<<<<<<<<<============Password Validator Function===========>>>>>>>>>>>
  _passValidForm1() {
    if (_passFormKey1.currentState!.validate()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ResetPassword()));
    }
  }

  ///<<<<<<<<<<============Email Form Validation=============>>>>>>>>>>>
  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please enter Email';
    }
    RegExp emailRegExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter valid Email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),

      ///<<<<<<<<<<==========APPBAR============>>>>>>>>>>
      appBar: AppBar(
        flexibleSpace: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xff000435)),
        ),
        title: const Text(
          'Coaching Center',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontFamily: 'Raleway Bold',
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(80),
        )),
        shadowColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontFamily: 'Ubuntu Medium'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Don\'t worry, Enter your email below to restore your password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Raleway Regular',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: _passFormKey1,
            child: Column(
              children: [
                ///<<<<<<<<<==========Email Form===========>>>>>>>>>>>
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomEmail(
                    onValidate: _validateEmail,
                    hintText: 'abc123@gmail.com',
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          ///<<<<<<<<<==========Continue Button============>>>>>>>>>>>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff2E5A88),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: _passValidForm1,
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Ubuntu Regular',
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
