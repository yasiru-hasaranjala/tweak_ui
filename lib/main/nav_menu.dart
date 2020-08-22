import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/family.dart';
import 'package:tweak/main/home.dart';
import 'package:tweak/main/self.dart';
import 'package:tweak/main/welcome.dart';
import 'package:tweak/widgets/right_drawer.dart';
import 'package:tweak/widgets/left_drawer.dart';

class NavMenu extends StatefulWidget {

  final titles = ['Welcome', 'Home', 'Self', 'Family'];
  final icons = [
    'assets/icons/welcome.svg',
    'assets/icons/home.svg',
    'assets/icons/self.svg',
    'assets/icons/family.svg',
  ];

  @override
  _NavMenuState createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {

  PageController _pageController;
  MenuPositionController _menuPositionController;
  bool userPageDragging = false;

  @override
  void initState() {
    _menuPositionController = MenuPositionController(initPosition: 0);

    _pageController = PageController(
        initialPage: 0,
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
      backgroundColor: kShadowColor1,
      drawerDragStartBehavior: DragStartBehavior.start,
      drawer: DrawerLeft(),
      endDrawer: DrawerRight(),
      body: NotificationListener<ScrollNotification>(
          // ignore: missing_return
        onNotification: (scrollNotification) {
            checkUserDragging(scrollNotification);
        },
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Welcome(),
            Home(),
            Self(),
            Family(),
          ],
        onPageChanged: (page) {},
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10.0,bottom: 8),
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.only(
              topRight:  Radius.circular(25),
              topLeft:  Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: kShadowColor2,
              spreadRadius: 0.3,
              blurRadius: 6,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: BubbledNavigationBar(
          controller: _menuPositionController,
          initialIndex: 0,
          itemMargin: EdgeInsets.only(left: 20,right: 20),
          backgroundColor: null,
          defaultBubbleColor: kGreenColor,
          onTap: (index) {
            _pageController.animateToPage(
                index,
                curve: Curves.easeInOutQuad,
                duration: Duration(milliseconds: 500)
            );
          },
          items: widget.titles.map((title) {
            var index = widget.titles.indexOf(title);
            var color = kGreenColor.withOpacity(0.1);
            return BubbledNavigationBarItem(
              icon: getIcon(index, kShadowColor3),
              activeIcon: getIcon(index, kGreenColor),
              bubbleColor: color,
              title: Text(
                title,
                style: TextStyle(color: kTextColor, fontSize: 12),
              ),
            );
          }).toList(),
        ),
      )
    );
  }

  Padding getIcon(int index, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: SvgPicture.asset(widget.icons[index], width: 25, color: color),
    );
  }
}
