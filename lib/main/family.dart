import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/service_card_row.dart';
import 'package:tweak/widgets/categories.dart';

class Family extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/kids.jpg', title: 'Solving Puzzle with Kids'),
    ItemObject(path: 'assets/images/cards/read.jpg', title: 'Read Story'),
  ];

  final List<ItemObject> iconCategory = [
    ItemObject(path: 'assets/icons/categories/teach.svg', title: 'Teach'),
    ItemObject(path: 'assets/icons/categories/outdoors.svg', title: 'Outdoors'),
    ItemObject(path: 'assets/icons/categories/art.svg', title: 'Art'),
    ItemObject(path: 'assets/icons/categories/assistance.svg', title: 'Assistance'),
    ItemObject(path: 'assets/icons/categories/petSitter.svg', title: 'Pet Sitter'),
    ItemObject(path: 'assets/icons/categories/caregiving.svg', title: 'Caregiving'),
    ItemObject(path: 'assets/icons/categories/afterschool.svg', title: 'Afterschool'),
    ItemObject(path: 'assets/icons/categories/seeAll.svg', title: 'See All'),
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
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'for Family',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-ExtraBold',
                          fontSize: 24,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Find all family treatment service right here',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 14,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-ExtraBold',
                          fontSize: 24,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Categories(iconCategory,8),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new CardRow(cardRow1,'Popular Services'),
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
