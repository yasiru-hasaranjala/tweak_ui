import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/service_card_row.dart';
import 'package:tweak/widgets/categories.dart';

class Home extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/cooking.jpg', title: 'Cooking Class'),
    ItemObject(path: 'assets/images/cards/painting.jpg', title: 'Interior Painting'),
  ];

  final List<ItemObject> iconCategory = [
    ItemObject(path: 'assets/icons/categories/interior.svg', title: 'interior'),
    ItemObject(path: 'assets/icons/categories/garden.svg', title: 'Garden'),
    ItemObject(path: 'assets/icons/categories/pool.svg', title: 'Pool'),
    ItemObject(path: 'assets/icons/categories/cooking.svg', title: 'Cooking'),
    ItemObject(path: 'assets/icons/categories/seasonal.svg', title: 'Seasonal'),
    ItemObject(path: 'assets/icons/categories/improve.svg', title: 'Improve'),
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
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'for Home',
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
                        'Find all home service right here',
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
                    Categories(iconCategory,6),
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
