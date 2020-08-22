import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/service_card_row.dart';
import 'package:tweak/widgets/categories.dart';
import 'package:tweak/widgets/provider_card_row.dart';

class Self extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/gym.jpg', title: 'Personal Trainer Gym'),
    ItemObject(path: 'assets/images/cards/yoga.jpg', title: 'Yoga Class'),
  ];
  final List<ItemObject> cardRow2 = [
    ItemObject(path: 'assets/images/cards/haircut.jpg', title: 'Get a Haircut'),
    ItemObject(path: 'assets/images/cards/manicure.jpg', title: 'Manicure'),
  ];
  final List<ItemObject> providerCardRow = [
    ItemObject(path: 'assets/images/cards/grace.jpg', title: 'Grace Natalie'),
    ItemObject(path: 'assets/images/cards/tokunaga.jpg', title: 'Tokunaga Yae'),
    ItemObject(path: 'assets/images/cards/grace.jpg', title: 'Grace Natalie'),
  ];

  final List<ItemObject> iconCategory = [
    ItemObject(path: 'assets/icons/categories/fitness.svg', title: 'Fitness'),
    ItemObject(path: 'assets/icons/categories/beauty.svg', title: 'Beauty'),
    ItemObject(path: 'assets/icons/categories/massage.svg', title: 'Massage'),
    ItemObject(path: 'assets/icons/categories/yoga.svg', title: 'Yoga'),
    ItemObject(path: 'assets/icons/categories/meditation.svg', title: 'Meditation'),
    ItemObject(path: 'assets/icons/categories/learn.svg', title: 'Learn'),
    ItemObject(path: 'assets/icons/categories/music.svg', title: 'Music'),
    ItemObject(path: 'assets/icons/categories/nutrition.svg', title: 'Nutrition'),
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
                        'for Self',
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
                        'Find all self treatment service right here',
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
                      new CardRow(cardRow2,'Good to Know'),
                      new ProviderCardRow(providerCardRow,'Popular Providers'),
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
