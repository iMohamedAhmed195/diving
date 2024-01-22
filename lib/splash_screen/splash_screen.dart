import 'package:diving/on_boarding_screen/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimations();
    initNavigateToHomeView();

  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  void initSlidingAnimations(){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  void initNavigateToHomeView(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const OnBoardingScreen()), (route) => false);
    });
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(

      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
           Image(image: AssetImage('assets/images/01-01-Launch Screen.jpg',),width: double.infinity,height:double.infinity,fit: BoxFit.fill,),
          SvgPicture.asset(
            'assets/images/hopin.svg',width: width * 0.2 , height: height * 0.2,)
        ],
      )

    );
  }
}
