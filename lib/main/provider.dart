import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/widgets/service_card_medium.dart';

class Provider extends StatefulWidget {

  final title;
  final String path;
  Provider(this.title,this.path);

  @override
  _ProviderState createState() => _ProviderState();
}

class _ProviderState extends State<Provider> with SingleTickerProviderStateMixin {

  bool liked = true;

  final List<Widget> myTabs = [
    Container(
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/navBar/yourplace.svg',
          ),
          Tab(text: ' Your Place'),
        ],
      ),
    ),
    Container(
      width: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/navBar/ourplace.svg',
          ),
          Tab(text: ' My Place'),
        ],
      ),
    ),
    Container(
      width: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/navBar/outside.svg',
          ),
          Tab(text: ' Outside'),
        ],
      ),
    ),
    Container(
      width: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/navBar/virtual.svg',
          ),
          Tab(text: ' Virtual'),
        ],
      ),
    ),
  ];

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.path),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 46,
                    left: 21,
                    child: new GestureDetector(
                      child: Container(
                        width: 39,
                        height: 39,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryLightColor,
                        ),
                        child: Icon(
                            Icons.arrow_back
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    top: 46,
                    right: 21,
                    child: new GestureDetector(
                      child: Container(
                        width: 39,
                        height: 39,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryLightColor,
                        ),
                        child: liked ? SvgPicture.asset(
                          'assets/icons/like.svg',
                        ) :  SvgPicture.asset(
                          'assets/icons/liked.svg',
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          liked = !liked;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: size.height*0.61,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-ExtraBold',
                              fontSize: 24,
                              color: kPrimaryLightColor,
                              height: 1,
                              shadows: [
                                Shadow(
                                  color: kTextColor,
                                  blurRadius: 6,
                                ),
                              ]
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25,right: 10),
                          width: size.width,
                          child: Flexible(
                            child: Text(
                              'Hey there! I am professional baby sitter, I help'
                                  ' take care babies and children',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 16,
                                color: kPrimaryLightColor,
                                height: 1.5,
                                  shadows: [
                                    Shadow(
                                      color: kTextColor,
                                      blurRadius: 6,
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(width: 25),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              alignment: Alignment.center,
                              width: 16,
                            ),
                            SizedBox(width: 4),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              alignment: Alignment.center,
                              width: 16,
                            ),
                            SizedBox(width:4),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              alignment: Alignment.center,
                              width: 16,
                            ),
                            SizedBox(width: 4),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              alignment: Alignment.center,
                              width: 16,
                            ),
                            SizedBox(width: 4),
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              alignment: Alignment.center,
                              width: 16,
                              color: kShadowColor3,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '(4.8)',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 14,
                                color: kPrimaryLightColor,
                                shadows: [
                                  Shadow(
                                    color: kTextColor,
                                    blurRadius: 6,
                                  ),
                                ]
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 5),
                              child: Icon(
                                Icons.offline_bolt,
                                size: 4,
                                color: kTextColor,
                              ),
                            ),
                            Text(
                              'Any Time',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 14,
                                color: kPrimaryLightColor,
                                  shadows: [
                                    Shadow(
                                      color: kTextColor,
                                      blurRadius: 6,
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: size.width,
                      height: size.height*0.6,
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.only(
                          topRight:  Radius.circular(34),
                          topLeft:  Radius.circular(34),
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
                      child: Container(
                        width: size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.topCenter,
                                padding: EdgeInsets.only(top: 6,bottom: 20),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: kShadowColor2,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                )
                            ),
                            TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              labelColor: kPrimaryColor,
                              indicatorColor: kGreenColor,
                              tabs: myTabs,
                            ),
                            Container(
                              child: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                        ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                        ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                                  ],
                                ),
                              ][_tabController.index],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
