import 'package:flutter/material.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/favourite_list.dart';
import 'package:tweak/components/calender.dart';
import 'package:tweak/widgets/service_card_row_small.dart';
import 'package:tweak/components/item_object.dart';

class DrawerRight extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/haircut-small.jpg', title: 'Get a Haircut'),
    ItemObject(path: 'assets/images/cards/haircut-small.jpg', title: 'Manicure'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 80,
                      alignment: Alignment.center,
                      child: Text(
                        'user',
                        style: TextStyle(
                          fontFamily: 'Font Awesome 5 Pro',
                          fontSize: 16,
                          color: kPrimaryColor,
                          height: 1,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: kShadowColor3,
                          style: BorderStyle.solid,
                          width: 3,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/user.jpg'
                          ),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      alignment: Alignment.center,
                      child: Text(
                        'user-cog',
                        style: TextStyle(
                          fontFamily: 'Font Awesome 5 Pro',
                          fontSize: 16,
                          color: kPrimaryColor,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Valerina Dowall',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-ExtraBold',
                      fontSize: 24,
                      color: kPrimaryColor,
                      height: 1,
                    ),
                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Family and Friends",
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Bold',
                    fontSize: 16,
                    color: kPrimaryColor,
                    height: 1,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Medium',
                    fontSize: 14,
                    color: kGreenColor,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/user-1.jpg'),
                ),
                SizedBox(width: 7),
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/user-2.jpg'),
                ),
                SizedBox(width: 7),
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/user-3.jpg'),
                ),
                SizedBox(width: 7),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kGreenColor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: kPrimaryLightColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favourites",
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Bold',
                    fontSize: 16,
                    color: kPrimaryColor,
                    height: 1,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-Medium',
                      fontSize: 14,
                      color: kGreenColor,
                      height: 1,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FavouriteList();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            alignment: Alignment.center,
            child: new CardRowSmall(cardRow1),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Bookings",
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Bold',
                    fontSize: 16,
                    color: kPrimaryColor,
                    height: 1,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Medium',
                    fontSize: 14,
                    color: kGreenColor,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Calendar()
        ],
      ),
    );
  }
}
