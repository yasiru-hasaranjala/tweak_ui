import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/components/search_bar.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/service_card_row.dart';

class Welcome extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/haircut.jpg', title: 'Get a Haircut'),
    ItemObject(path: 'assets/images/cards/manicure.jpg', title: 'Manicure'),
  ];
  final List<ItemObject> cardRow2 = [
    ItemObject(path: 'assets/images/cards/kids.jpg', title: 'Solving Puzzle with Kids'),
    ItemObject(path: 'assets/images/cards/kites.jpg', title: 'Playing Kite'),
  ];

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.only(
                    bottomRight:  Radius.circular(25),
                    bottomLeft:  Radius.circular(25),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                          child: Container(
                            child: SvgPicture.asset(
                              'assets/icons/welcome-1.svg',
                            ),
                          ),
                          onTap: (){},
                        ),
                        Text(
                          'TWEAKS',
                          style: TextStyle(
                            fontFamily: 'Concourse',
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: kPrimaryColor,
                          ),
                        ),
                        new GestureDetector(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: kShadowColor2,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.person, color: kActiveIconColor,),
                          ),
                          onTap: (){
                            Scaffold.of(context).openEndDrawer();
                          },
                        ),
                      ],

                    ),
                    SizedBox(height: 35),
                    SearchBar(false),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new CardRow(cardRow1,'Popular Services'),
                      new CardRow(cardRow2,'For Family'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
