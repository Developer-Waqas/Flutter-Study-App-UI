import 'package:coaching_center_ui/Screens/Main%20Screen/HTML%20Page/paragraph_html.dart';
import 'package:flutter/material.dart';

class HeadingHTML extends StatelessWidget {
  const HeadingHTML({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000435),
      ///<<<<<<<<===========APPBAR============>>>>>>>>>>>>>>
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
                            BoxShadow(color: Colors.white, blurRadius: 10),
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
                          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              ///<<<<<<<<==========Main Heading============>>>>>>>>>>>
                              Text(
                                'Headings in HTML:',
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
                                'A HTML heading or HTML h tag can be defined as a title or a subtitle which you want to display on the webpage. When you place the text within the heading tags <h1>.........</h1>, it is displayed on the browser in the bold format and size of the text depends on the number of heading.\nThere are six different HTML headings which are defined with the <h1> to <h6> tags, from highest level h1 (main heading) to the least level h6 (least important heading).\nh1 is the largest heading tag and h6 is the smallest one. So h1 is used for most important heading and h6 is used for least important.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<<<<==========Note============>>>>>>>>>>.
                              Text(
                                'Note:',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway bold',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                ' The main keyword of the whole content of a webpage should be display by h1 heading tag.',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Regular',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ///<<<<<<========EXAMPLE==========>>>>>>>>>
                              Text(
                                'Example:',
                                style: TextStyle(
                                  wordSpacing: 5,
                                  fontFamily: 'Raleway Bold',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              ///<<<<<<<<<=====Syntax structure============>>>>>>>>>>>
                              Text(
                                '<h1>Heading no. 1</h1>\n<h2>Heading no. 2</h2>\n<h3>Heading no. 3</h3>\n<h4>Heading no. 4</h4>\n<h5>Heading no. 5</h5>\n<h6>Heading no. 6</h6>  ',
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
              ///<<<<<<<<<<<<==============Previous Button=============>>>>>>>>>>>>>>>>>>>
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
                  ///<<<<<<<<<<<=============Next button==============>>>>>>>>>>>>>>
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ParagraphHTML()));
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
