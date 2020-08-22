import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/booking.dart';
import 'package:tweak/main/overview.dart';
import 'package:tweak/widgets/service_card_medium.dart';

class Details extends StatefulWidget {

  final title;
  final String path;
  Details(this.title,this.path);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {

  bool liked = true;

  final List<Widget> myTabs = [
    Container(
      child: Tab(text: ' Overview'),
    ),
    Container(
      child: Tab(text: ' Details'),
    ),
    Container(
      child:Tab(text: ' Booking'),
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
    _tabController = TabController(length: 3, vsync: this);
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
                        fit: BoxFit.fill,
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
                        ):  SvgPicture.asset(
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
                            Container(
                              padding: EdgeInsets.only(left:25),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.title,
                                style: TextStyle(
                                  fontFamily: 'HKGrotesk-Bold',
                                  fontSize: 24,
                                  color: kPrimaryColor,
                                  height: 1,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
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
                                        color: kPrimaryColor,
                                        height: 1,
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
                                        color: kPrimaryColor,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 10, 0, 5),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: kShadowColor1,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Kids',
                                        style: TextStyle(color: kTextColor),
                                      )
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: kShadowColor1,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Fun',
                                        style: TextStyle(color: kTextColor),
                                      )
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: kShadowColor1,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'STEM',
                                        style: TextStyle(color: kTextColor),
                                      )
                                  ),
                                  SizedBox(width: 12),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 5),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(13),
                                    child: Image.asset('assets/images/user.jpg',height: 26,),
                                  ),
                                  Text(
                                    '  by ',
                                    style: TextStyle(
                                      fontFamily: 'HKGrotesk-Medium',
                                      fontSize: 14,
                                      color: kTextColor,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    'Mary Jones',
                                    style: TextStyle(
                                      fontFamily: 'HKGrotesk-Medium',
                                      fontSize: 14,
                                      color: kPrimaryColor,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    ' at  ',
                                    style: TextStyle(
                                      fontFamily: 'HKGrotesk-Medium',
                                      fontSize: 14,
                                      color: kTextColor,
                                      height: 1,
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: kShadowColor1,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Client-Home',
                                        style: TextStyle(color: kPinkColor),
                                      )
                                  ),

                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              color: kShadowColor1,
                            ),
                            TabBar(
                              controller: _tabController,
                              labelColor: kPrimaryColor,
                              indicatorColor: kGreenColor,
                              tabs: myTabs,
                            ),
                            Container(
                              child: [
                                Overview(),
                                Column(
                                  children: <Widget>[
                                    ServiceCardMedium(
                                      'Solving Puzzle with kids',
                                      'assets/images/cards/kids.jpg'
                                    ),
                                  ],
                                ),
                                Booking(),
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
