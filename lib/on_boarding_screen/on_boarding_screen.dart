import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int index;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: Onboarding(
      pages: [
        PageModel(
          widget: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height:height * 0.999999999999,
                      child: SvgPicture.asset(
                          'assets/images/01-04-On Boarding1.svg',fit: BoxFit.fill,width: double.infinity,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: SizedBox(
                      height: height *0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Find a trip',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            'A large selection of trips available to the underwater world.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: height *0.05,
                                  width: width * 0.25 ,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(height * 0.01)
                                  ),

                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        if(index == 0){
                                          index = 2 ;
                                        }

                                      });
                                    },
                                    child: Text(
                                      capitalizeFirstCharacter('Skip'),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFFFFF)
                                      ),
                                    ),
                                  )),
                              DotsIndicator(
                                dotsCount: 3,
                                position: index,
                                decorator: DotsDecorator(
                                  color: const Color(0xff295185), // Inactive color
                                  activeColor: Colors.white,
                                  size: Size(width *0.035, height *0.035),
                                  activeSize: Size(width *0.035, height *0.035)
                                ),
                              ),
                              Container(
                                  height: height *0.05,
                                  width: width * 0.25 ,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(height * 0.01)
                                  ),

                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        index +=1  ;
                                      });
                                    },
                                    child: Text(
                                      capitalizeFirstCharacter('next'),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff295185)
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
        PageModel(
          widget: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height:height * 0.999999999999,
                      child: SvgPicture.asset(
                          'assets/images/01-04-On Boarding2.svg',fit: BoxFit.fill,width: double.infinity,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: SizedBox(
                      height: height *0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Book a dive',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            'Just a few small steps to the amazing journey of your life.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: height *0.05,
                                  width: width * 0.25 ,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF).withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(height * 0.01)
                                  ),

                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {

                                          index = 2 ;
                                      });
                                    },
                                    child: Text(
                                      capitalizeFirstCharacter('Skip'),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFFFFF)
                                      ),
                                    ),
                                  )),
                              DotsIndicator(
                                dotsCount: 3,
                                position: index,
                                decorator: DotsDecorator(
                                    color: const Color(0xff295185), // Inactive color
                                    activeColor: Colors.white,
                                    size: Size(width *0.035, height *0.035),
                                    activeSize: Size(width *0.035, height *0.035)
                                ),
                              ),
                              Container(
                                  height: height *0.05,
                                  width: width * 0.25 ,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(height * 0.01)
                                  ),

                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        index +=1  ;
                                      });

                                    },
                                    child: Text(
                                      capitalizeFirstCharacter('next'),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff295185)
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
        PageModel(
          widget:  Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height:height * 0.999999999999,
                      child: SvgPicture.asset(
                          'assets/images/01-05-On Boarding3.svg',fit: BoxFit.fill,width: double.infinity,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: SizedBox(
                      height: height *0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Admire the sea',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            '‎ Enjoy an unforgettable view of the sea depth in a safe way.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 60,),
                          Container(
                              height: height *0.05,
                              width: double.infinity ,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(height * 0.01)
                              ),

                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  capitalizeFirstCharacter('get started'),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff295185)
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ],
      onPageChange: (int pageIndex) {
        setState(() {
          index = pageIndex;
        });
      },
      startPageIndex: index,
    ));
  }
}
String capitalizeFirstCharacter(String input) {
  return input.isEmpty
      ? input
      : input.toUpperCase() ;
}