import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:tweak/intros/Onboarding.dart';
class Start extends StatefulWidget {

  final int initPosition;
  final title = [
    'Littel Tweeks.\nBig Improvements. ',
    'Your place or Our’s.\nOutside or Virtual.',
    'Tweaks for your\nSelf, Family or Home',
    'Private or Shared.\nIt’s easy to split.'];
  final imgSrc = [
    'assets/tw-1.jpg',
    'assets/tw-2.jpg',
    'assets/tw-3.jpg',
    'assets/tw-4.jpg',
  ];

  final dis = [
    'Improve your Self, your Family & your Home with Services & Experiences pr'
        'ovided by Tweak.',
    'Enjoy the services you want,\ndelivered the way you need.',
    'A multitude of talented providers offer unique & beneficial services for '
        'Self, Family & Home.',
    'Whether it’s a Read-a-Loud Playdate with your neighbor or a Yoga Session'
        ' with your BFF - it’s always easy to split bookings with Tweak',
  ];
  Start(this.initPosition);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  PageController _pageController;
  MenuPositionController _menuPositionController;
  bool userPageDragging = false;

  @override
  void initState() {
    _menuPositionController = MenuPositionController(initPosition: widget.initPosition);

    _pageController = PageController(
        initialPage: widget.initPosition,
        keepPage: false,
        viewportFraction: 1.0
    );
    _pageController.addListener(handlePageChange);

    super.initState();
  }

  void handlePageChange() {
    _menuPositionController.absolutePosition = _pageController.page;
  }

  void checkUserDragging(ScrollNotification scrollNotification) {
    if (scrollNotification is UserScrollNotification && scrollNotification.direction != ScrollDirection.idle) {
      userPageDragging = true;
    } else if (scrollNotification is ScrollEndNotification) {
      userPageDragging = false;
    }
    if (userPageDragging) {
      _menuPositionController.findNearestTarget(_pageController.page);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        // ignore: missing_return
        onNotification: (scrollNotification) {
          checkUserDragging(scrollNotification);
        },
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Onboarding(title: widget.title[0],imgSrc: widget.imgSrc[0],dis: widget.dis[0],num: 0,),
            Onboarding(title: widget.title[1],imgSrc: widget.imgSrc[1],dis: widget.dis[1],num: 1,),
            Onboarding(title: widget.title[2],imgSrc: widget.imgSrc[2],dis: widget.dis[2],num: 2,),
            Onboarding(title: widget.title[3],imgSrc: widget.imgSrc[3],dis: widget.dis[3],num: 3,),
          ],
          onPageChanged: (page) {
          },
        ),
      ),
    );
  }
}
