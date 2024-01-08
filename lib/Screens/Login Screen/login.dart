
import 'package:flutter/material.dart';
import '../../Common Widgets/custom_emailFeild.dart';
import '../CreateAccount Screen/create_account.dart';
import '../Main Screen/main_screen.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ///<<<<<<<<<<========Form Key============>>>>>>>>>>>>
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();

  ///<<<<<<<<<<<<<============Form Validator Function==========>>>>>>>>>>>>
  _emailValidForm() {
    if (_emailFormKey.currentState!.validate()) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>const MainScreen()), (route) => false);
    }
  }

  ///<<<<<<<============Email Validator============>>>>>>>>>>>>>
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

  ///<<<<<<<<<<<=========Password Validator==========>>>>>>>>>>>
  RegExp passValid = RegExp(r"^(?=.*\d)[A-Za-z0-9_]+$");
  bool validatePassword(String msg) {
    String password = msg.trim();

    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  ///<<<<<<==========To hide a Password=============>>>>>>>>>>>>>
  bool _isHidden = true;

  void _togglePasswordVeiw() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),

      ///<<<<<<<<<========APPBAR============>>>>>>>>>>>>>
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     decoration: const BoxDecoration(color: Color(0xff000435)),
      //   ),
      //   title: const Text(
      //     'Coaching Center',
      //     style: TextStyle(
      //       color: Colors.grey,
      //       fontSize: 24,
      //       fontFamily: 'Raleway Bold',
      //     ),
      //   ),
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.vertical(
      //     bottom: Radius.circular(80),
      //   )),
      //   shadowColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              ///<<<<<<<<<<<===========Circular Avator================>>>>>>>>>>>>>>
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

              ///<<<<<<<<<<<<==========Headings==============>>>>>>>>>>>>>
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
                'Login your account & Explore your courses',
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
                key: _emailFormKey,
                child: Column(
                  children: [
                    ///<<<<<<<<<=============Email Form============>>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomEmail(
                        onValidate: _validateEmail,
                        hintText: 'ZenzoDev123@gmail.com',
                        labelText: 'Email',

                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///<<<<<<<<<<===========Password Form============>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
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
                            return 'Please enter password without Special character';
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

                    ///<<<<<<<<=======Forgot Password============>>>>>>>>>>>>>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()));
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Josefin Regular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    ///<<<<<<<<<<<<<===========Login Button============>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color(0xff2E5A88),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextButton(
                          onPressed: _emailValidForm,
                          child: const Text(
                            'Login',
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
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an Account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Josefin Regular',
                    ),
                  ),

                  ///<<<<<<<<<<<<=========Create Account==========>>>>>>>>>>>>>
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccountScreen()));
                    },
                    child: const Text(
                      'Create Account',
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
