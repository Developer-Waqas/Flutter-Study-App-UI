import 'package:flutter/material.dart';

import 'login.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  ///<<<<<<<<<<<=============Form Key============>>>>>>>>>>>>>>
  final GlobalKey<FormState> _passFormKey2 = GlobalKey<FormState>();

  ///<<<<<<<<<<<<<=========Password Controller=============>>>>>>>>>>>>
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  ///<<<<<<<===============Password Validator Function=============>>>>>>>>>>>>
  _passValidForm2() {
    if (_passFormKey2.currentState!.validate()) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
    }
  }

  ///<<<<<<<<<<<==================For New Password=============>>>>>>>>>>>>
  RegExp passValid = RegExp(r"^(?=.*\d)[A-Za-z0-9_]+$");

  bool validatePassword(String msg) {
    String password = msg.trim();

    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  ///<<<<<<<<=============To hide a Password============>>>>>>>>>>>>>>
  bool _isHidden = true;

  void _togglePasswordVeiw() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  ///<<<<<<<<<<<<<<===============For Confirm NEW password=================>>>>>>>>>>>>>>>
  RegExp passValid1 = RegExp(r"^(?=.*\d)[A-Za-z0-9_]+$");

  bool validatePassword1(String msg1) {
    String password1 = msg1.trim();

    if (passValid1.hasMatch(password1)) {
      return true;
    } else {
      return false;
    }
  }

  ///<<<<<<<<=============To hide a New Password============>>>>>>>>>>>>>>

  bool _ishidden = true;

  void _togglepasswordVeiw() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),

      ///<<<<<<<<<===========APPBAR============>>>>>>>>>>
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

            ///<<<<<<<<<<==========Headings=========>>>>>>>>>>>>
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontFamily: 'Ubuntu Medium'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your new password & Continue your courses',
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

          ///<<<<<<<<<<<============Password Form=================>>>>>>>>>>>>
          Form(
            key: _passFormKey2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: password,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Josefin Regular',
                    ),
                    cursorColor: Colors.grey,
                    obscureText: _ishidden,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Abc123',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Josefin Regular',
                      ),
                      labelText: 'New Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Josefin Regular',
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglepasswordVeiw,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      suffixIconColor: Colors.grey,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        child: Icon(Icons.key_rounded),
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
                    validator: (pass) {
                      if (pass!.isEmpty) {
                        return 'Please enter password';
                      } else if (pass.length < 6) {
                        return 'Password should contain atleast 6 characters';
                      } else if (pass.length > 15) {
                        return 'Password should less than 15 characters';
                      } else {
                        bool result = validatePassword1(pass);
                        if (result) {
                          return null;
                        } else {
                          return 'Password should contain atleast one number';
                        }
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                ///<<<<<<<<===========New Password Form==============>>>>>>>>>>>>>>
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: confirmpassword,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Josefin Regular',
                    ),
                    cursorColor: Colors.grey,
                    obscureText: _isHidden,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Abc123',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Josefin Regular',
                      ),
                      labelText: 'Confirm New Password',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Josefin Regular',
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordVeiw,
                        child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      suffixIconColor: Colors.grey,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        child: Icon(Icons.key_rounded),
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
                    validator: (pass) {
                      if (pass!.isEmpty) {
                        return 'Please enter password';
                      } else if (pass.length < 6) {
                        return 'Password should contain atleast 6 characters';
                      } else if (pass.length > 15) {
                        return 'Password should less than 15 characters';
                      } else if (password.text != confirmpassword.text) {
                        return 'Password doesnot match';
                      } else {
                        bool result = validatePassword(pass);
                        if (result) {
                          return null;
                        } else {
                          return 'Password should contain atleast one number';
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          ///<<<<<<<<<===============Reset Password Button==============>>>>>>>>>>>>>>>>
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
                onPressed: _passValidForm2,
                child: const Text(
                  'Reset Password',
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
