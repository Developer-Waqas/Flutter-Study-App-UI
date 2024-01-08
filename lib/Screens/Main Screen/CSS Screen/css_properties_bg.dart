import 'package:flutter/material.dart';

import 'css_properties_border.dart';

class BackgroundCSS extends StatelessWidget {
  const BackgroundCSS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<<,==========APPBAR===============>>>>>>>>>>>>>>>
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
              ///<<<<<<<<<<<===========CSS Background Property===============>>>>>>>>>>>>
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
                              Text(
                                'CSS Background:',
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
                                'CSS background property is used to define the background effects on element. There are 5 CSS background properties that affects the HTML elements:',
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
                                '1. background-color\n2. background-image\n3. background-repeat\n4. background-attachment\n5. background-position',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<=======1st Property============>>>>>>>>>>>>>
                              Text(
                                '1) CSS background-color:',
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
                                'The background-color property is used to specify the background color of the element.\nFor Example visit JavatPoint Website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<===========2nd Property================>>>>>>>>>
                              Text(
                                '2) CSS background-image:',
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
                                'The background-image property is used to set an image as a background of an element. By default the image covers the entire element. \nFor Example visit JavatPoint Website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<============3rd Property==============>>>>>>>>>>>>>>
                              Text(
                                '3) CSS background-repeat:',
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
                                'By default, the background-image property repeats the background image horizontally and vertically. Some images are repeated only horizontally or vertically.\nThe background looks better if the image repeated horizontally & vertically.\n   1. background-repeat: repeat-x;\n   2. background-repeat: repeat-y; \nFor Example visit JavatPoint Website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<<<===========4th Property============>>>>>>>>>>>>>>
                              Text(
                                '4) CSS background-attachment:',
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
                                'The background-attachment property is used to specify if the background image is fixed or scroll with the rest of the page in browser window. If you set fixed the background image then the image will not move during scrolling in the browser. Let?s take an example with fixed background image.\n  1. background: white url('');\n  2. background-repeat: no-repeat;\n  3. background-attachment: fixed;  \nFor Example visit JavatPoint Website.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<<============5th Property============>>>>>>>>>>>>
                              Text(
                                '5) CSS background-position:',
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
                                'You can set the following positions:\n1. center\n2. top\n3. bottom\n4. left\n5. right\n (i). background: white url('');\n (ii). background-repeat: no-repeat;\n (iii). background-attachment: fixed;\n (iv). background-position: center; \nFor Example visit JavatPoint Website.  ',
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
              ///<<<<<<<<<<============Previous Button==============>>>>>>>>>>>>>
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

                  ///<<<<<<<<<<===========Next Button===============>>>>>>>>>>>>>
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BorderCSS()));
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
