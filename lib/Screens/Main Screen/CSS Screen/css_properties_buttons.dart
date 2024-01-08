import 'package:flutter/material.dart';

import '../HTML Page/comming_soon.dart';

class ButtonsCSS extends StatelessWidget {
  const ButtonsCSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<<=============APPBAR====================>>>>>>>>>>>>>>>>>
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
                              ///<<<<<<<<<===========Main Headings==============>>>>>>>>>>>>>>
                              Text(
                                'CSS Buttons:',
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
                                'In HTML, we use the button tag to create a button, but by using CSS properties, we can style the buttons. Buttons help us to create user interaction and event processing. They are one of the widely used elements of web pages.\nDuring the form submission, to view or to get some information, we generally use buttons.\nLet\'s see the basic styling in buttons.',
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
                                'Basic styling in Buttons',
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
                                'There are multiple properties available that are used to style the button element. Let\'s discuss them one by one.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<========1st Property=============>>>>>>>>>>>>>>
                              Text(
                                '1) background-color:',
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
                                'As we have discussed earlier, this property is used for setting the background color of the button element.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<====SYNTAX====>>>>>>
                              Text(
                                'Syntax:',
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
                                'element { \n// background-color style\n}  \nFor Example visit JavatPoint website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<============2nd Property=============>>>>>>>>>>
                              Text(
                                '2) border:',
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
                                'It is used to set the border of the button. It is the shorthand property for border-width, border-color, and border-style.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<=======SYNTAX=======>>>>>>>>>>
                              Text(
                                'Syntax:',
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
                                'element { \n// border style\n}  \nFor Example visit JavatPoint website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<===========3rd Property=============>>>>>>>>>>>>
                              Text(
                                '3) border-radius:',
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
                                'It is used to make the rounded corners of the button. It sets the border radius of the button.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<===========SYNTAX===========>>>>>>>>>>>>>
                              Text(
                                'Syntax:',
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
                                'element { \n// border radius property\n}  \nFor Example visit JavatPoint website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<============4th Property=============>>>>>>>>>>>>>>>
                              Text(
                                '4) box-shadow:',
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
                                'As its name implies, it is used to create the shadow of the button box. It is used to add the shadow to the button. We can also create a shadow during the hover on the button.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<=========SYNTAX===========>>>>>>>>>>>>>
                              Text(
                                'Syntax:',
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
                                'box-shadow: [horizontal offset] [vertical offset] [blur radius][optional spread radius] [color];    \nFor Example visit JavatPoint website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<<<<============5th Property=============>>>>>>>>>>>>>
                              Text(
                                '5) padding:',
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
                                'It is used to set the button padding.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<========SYNTAX===========>>>>>>>>>>>
                              Text(
                                'Syntax:',
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
                                'element { \n// padding style\n}  \nFor Example visit JavatPoint website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
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
              ///<<<<<<<<<<=============Previous Button===============>>>>>>>>>>>>>>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Prev',
                          style: TextStyle(
                            wordSpacing: 5,
                            fontFamily: 'Ubuntu Regular',
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ///<<<<<<<<<<=============Next Button================>>>>>>>>>>>>>
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ComingSoon()));
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
