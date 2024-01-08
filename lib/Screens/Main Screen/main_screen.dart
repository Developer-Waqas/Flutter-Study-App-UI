
import 'package:flutter/material.dart';

import 'CSS Screen/css.dart';
import 'HTML Page/html.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<<=========APPBAR============>>>>>>>>>>>>
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Welcome! to Coaching Center,',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                              fontFamily: 'Ubuntu Medium',
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'You can learn any programming language by clicking on buttons below and start the course according to you ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Raleway Regular',
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///<<<<<<<<<=============HTML Container=============>>>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HTMLscreen()));
                        },
                        child: const Text(
                          'Hyper Text Markup Language(HTML)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Ubuntu Medium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///<<<<<<<<<<<============CSS Container==============>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CSSScreen()));
                        },
                        child: const Text(
                          'Cascading Style Sheets(CSS)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Ubuntu Medium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///<<<<<<<<<<<<<<==============C++ Container==================>>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                            'C++ Programming Language(coming soon)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu Medium',
                            ),
                          ),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///<<<<<<<<<<=============Python Container==============>>>>>>>>>.
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                            'Python Programming Language(coming soon)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu Medium',
                            ),
                          ),
                      ),
                      ),
                    ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///<<<<<<<<<<<<=============JavaScript Container============>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:  const Center(
                        child: Text(
                            'JavaScript(coming soon)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu Medium',
                            ),
                          ),
                      ),
                      ),
                    ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///<<<<<<<<<<==============Dart Container====================>>>>>>>>>>>>>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff2E5A88),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:  const Center(
                        child: Text(
                            'Dart Programming Language(coming soon)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Ubuntu Medium',
                            ),
                          ),
                      ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
