import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/intros/sign_in.dart';
import 'package:tweak/intros/start.dart';

class Onboarding extends StatefulWidget {

  final String title;
  final String imgSrc;
  final String dis;
  final int num;
  Onboarding({
    Key key,
    this.title,
    this.imgSrc,
    this.dis,
    this.num,
  }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.imgSrc,
              width: size.width*(1-widget.num*0.03),
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: size.height*0.07),
            SizedBox(
              width: 355.0,
              height: 72.0,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Metropolis-ExtraBold',
                  fontSize: 30,
                  color: kPrimaryColor,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 293.0,
              height: 60.0,
              child: Text(
                widget.dis,
                style: TextStyle(
                  fontFamily: 'Metropolis-Regular',
                  fontSize: 13,
                  color: kTextColor,
                  height: 1.5384615384615385,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height*0.02),
            new InkWell(
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(
                  page: widget.num<3 ? Start(widget.num+1):SignIn(),
                )
                );
              },
              child: new Container(
                width: size.width*0.8,
                height: size.height*0.08,
                decoration: new BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                child: new Center(
                  child: new Text(
                    'Let’s Tweak',
                    style: TextStyle(
                      fontFamily: 'Metropolis-Bold',
                      fontSize: 15,
                      color: kPrimaryLightColor,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Circle(widget.num==0 ? true: false),
                SizedBox(width: 5,),
                Circle(widget.num==1 ? true: false),
                SizedBox(width: 5,),
                Circle(widget.num==2 ? true: false),
                SizedBox(width: 5,),
                Circle(widget.num==3 ? true: false),
              ],
            ),
            SizedBox(height: size.height*0.02),
            SvgPicture.asset(
              "assets/icons/tweakapp.svg",
            ),
            SizedBox(height: size.height*0.04),
          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {

  final bool filled;

  Circle(this.filled);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filled ? kPrimaryColor : kPrimaryLightColor,
          border: Border.all(
            width: 1,
            color: kPrimaryColor,
          )
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}