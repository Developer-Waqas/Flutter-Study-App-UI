
import 'package:flutter/material.dart';

import 'css_properties_bg.dart';

class IntroductionCSS extends StatelessWidget {
  const IntroductionCSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<<==========APPBAR============>>>>>>>>>>>>>
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
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.white, blurRadius: 10)
                          ],
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          color: const Color(0xff2E5A88),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              ///<<<<<<<<<<<========Main Heading============>>>>>>>>>>
                              Text(
                                'CSS Tutorial:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'CSS tutorial or CSS 3 tutorial provides basic and advanced concepts of CSS technology. Our CSS tutorial is developed for beginners and professionals. The major points of CSS are given below:',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '1. CSS stands for Cascading Style Sheet.\n2. CSS is used to design HTML tags.\n3. CSS is a widely used language on the web.\n4. HTML, CSS and JavaScript are used for web designing. It helps the web designers to apply style on HTML tags.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<======2nd Main Heading==========>>>>>>>>>
                              Text(
                                'CSS Syntax:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 17,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'A CSS rule set contains a selector and a declaration block.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              ///<<<<<<<<<<<<==============!st Property=============>>>>>>>>>>>>
                              Text(
                                'Selector:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Selector indicates the HTML element you want to style. It could be any tag like <h1>, <title> etc.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<<==============2nd Property============>>>>>>>>>>
                              Text(
                                'Declaration Block:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'The declaration block can contain one or more declarations separated by a semicolon. For the above example, there are two declarations:\n   1. color: yellow;\n   2. font-size: 11 px;\nEach declaration contains a property name and value, separated by a colon.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<============3rd Property===========>>>>>>>>>>>>
                              Text(
                                'Property:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'A Property is a type of attribute of HTML element. It could be color, border etc.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<===========4th Property=============>>>>>>>>>>
                              Text(
                                'Value:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                ' Values are assigned to CSS properties. In the above example, value "yellow" is assigned to color property.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<======EXAMPLE========>>>>>>>>>
                              Text(
                                'Example:',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 17,
                                  fontFamily: 'Ubuntu Medium',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              ///<<<<<=====Syntax structure====>>>>>>
                              Text(
                                'Selector{Property1: value1; Property2: value2; ..........;}',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              ///<<<<<<<<<============Next Button===============>>>>>>>>>>>>>>>
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(color: Colors.white, blurRadius: 5)
                        ],
                        color: const Color(0xff2E5A88),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BackgroundCSS()));
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            wordSpacing: 5,
                            fontFamily: 'Ubuntu Regular',
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
