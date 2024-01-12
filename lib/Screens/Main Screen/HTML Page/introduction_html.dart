import 'package:coaching_center/Screens/Main%20Screen/HTML%20Page/tags_html.dart';
import 'package:flutter/material.dart';

class IntroductionHTML extends StatelessWidget {
  const IntroductionHTML({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<<<=============APPBAR=============>>>>>>>>>>>>>>.
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
                              ///<<<<<<<<=========Main Heading===========>>>>>>>>>>
                              Text(
                                'HTML Tutorial:',
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
                                'HTML tutorial or HTML 5 tutorial provides basic and advanced concepts of HTML. Our HTML tutorial is developed for beginners and professionals. In our tutorial, every topic is given step-by-step so that you can learn it in a very easy way. If you are new in learning HTML, then you can learn HTML from basic to a professional level and after learning HTML with CSS and JavaScript you will be able to create your own interactive and dynamic website. But Now We will focus on HTML only in this tutorial.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<==========1st Property==========>>>>>>>>>>
                              Text(
                                'What is HTML?',
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
                                'HTML is an acronym which stands for Hyper Text Markup Language which is used for creating web pages and web applications. Let\'s see what is meant by Hypertext Markup Language, and Web page.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<<===========EXAMPLE============>>>>>>>>>>>>
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
                              ///<<<<<<<<<<==========Syntax structure===========>>>>>>>>>>
                              Text(
                                ' <!DOCTYPE>\n<html>\n<head>\n<title>Web page title</title>\n</head>\n<body>\n<h1>Write Your First Heading</h1>\n<p>Write Your First Paragraph.</p>\n</body>\n</html>',
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
              ///<<<<<<<<<<<<<============Next Button================>>>>>>>>>>>>>>>>
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
                                  builder: (context) => const TagsHTML()));
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
