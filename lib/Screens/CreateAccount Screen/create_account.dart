import 'package:flutter/material.dart';

import '../../Common Widgets/custom_emailFeild.dart';
import '../Main Screen/main_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  ///<<<<<<<<<=======Form Key=======>>>>>>>>>>>>
  final GlobalKey<FormState> _emailFormKey1 = GlobalKey<FormState>();

  ///<<<<<<<<<<===========Form Validator Function============>>>>>>>>>>>>>
  _validForm3() {
    if (_emailFormKey1.currentState!.validate()) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const MainScreen()), (route) => false);
    }
  }

  ///<<<<<<<<<<<<<============For Email Feild Validation===========>>>>>>>>>>
  String? _validateEmail3(value) {
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

  ///<<<<<<<<=======Password Controller================>>>>>>>>>>>>
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  ///<<<<<<<<<<<<==================For New Password==============>>>>>>>>>>>>>>
  RegExp passValid = RegExp(r"^(?=.*\d)[A-Za-z0-9_]+$");

  bool validatePassword(String msg) {
    String password = msg.trim();

    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  ///<<<<<<<<========To hide a Password============>>>>>>>>>>>>>>>
  bool _isHidden = true;

  void _togglePasswordVeiw() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  ///<<<<<<<<<<<<<================For Confirm NEW password============>>>>>>>>>>>>>
  RegExp passValid1 = RegExp(r"^(?=.*\d)[A-Za-z0-9_]+$");

  bool validatePassword1(String msg1) {
    String password1 = msg1.trim();

    if (passValid1.hasMatch(password1)) {
      return true;
    } else {
      return false;
    }
  }

  ///<<<<<<<<========To hide a Confirm Password============>>>>>>>>>>>>>>>

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

      ///<<<<<<<<=========APPBAR==========>>>>>>>>>>>>>>
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              ///<<<<<<<<<<==============Circular Avator=============>>>>>>>>>>>>>
              const Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/Avator.png'),
                        radius: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              ///<<<<<<<<========Headings=========>>>>>>>>>>>
              const Text(
                'Coaching Center',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontFamily: 'Ubuntu Medium',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create Account & start learning now!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'Raleway Regular',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _emailFormKey1,
                child: Column(
                  children: [
                    ///<<<<<<<<<<<<<=========For First Name============>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway Regular',
                        ),
                        cursorColor: Colors.grey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Abc',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          labelText: 'First Name',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 2),
                            child: Icon(Icons.person),
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
                        validator: (firstName) {
                          if (firstName!.isEmpty) {
                            return 'Please enter your First Name';
                          } else if (firstName.length < 3) {
                            return 'First Name should contain atleast 3 characters';
                          } else if (firstName.length > 20) {
                            return 'First Name should less than 20 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///<<<<<<<<<<<<<========for last name==========>>>>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway Regular',
                        ),
                        cursorColor: Colors.grey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Xyz',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          labelText: 'Last Name(Optional)',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 2),
                            child: Icon(Icons.person),
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
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///<<<<<<<<<<===============Email Form===============>>>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomEmail(
                        onValidate: _validateEmail3,
                        hintText: 'Abc123@gmail.coms',
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///<<<<<<<<<<<=============Password Form===============>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: password,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway Regular',
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
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          suffixIcon: InkWell(
                            onTap: _togglePasswordVeiw,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
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
                    const SizedBox(
                      height: 10,
                    ),

                    ///<<<<<<<<<<<=============Confirm Password Form===============>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: confirmpassword,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway Regular',
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
                          labelText: 'Confirm Password',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Josefin Regular',
                          ),
                          suffixIcon: InkWell(
                            onTap: _togglepasswordVeiw,
                            child: Icon(
                              _ishidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
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
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              ///<<<<<<<<============Create Account Button============>>>>>>>>>>>>>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff2E5A88),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: _validForm3,
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Ubuntu Regular',
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Josefin Regular',
                    ),
                  ),

                  ///<<<<<<<<<<=============Login Button=============>>>>>>>>>>>>>>
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'Ubuntu Medium',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
