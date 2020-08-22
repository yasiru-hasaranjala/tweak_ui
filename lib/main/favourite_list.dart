import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tweak/components/search_bar_favourite.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/widgets/service_card_medium.dart';

class FavouriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 40,
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
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kShadowColor1,
                            ),
                            child: Icon(Icons.arrow_back,size: 28,)
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Favourite List',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Bold',
                            fontSize: 20,
                            color: kPrimaryColor,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SearchBarFavourite(false),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kGreenColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Salon',
                          style: TextStyle(color: kPrimaryLightColor),
                        )
                      ),
                      SizedBox(width: 12),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: kGreenColor)
                          ),
                          child: Text(
                            'Family',
                            style: TextStyle(color: kGreenColor),
                          )
                      ),
                      SizedBox(width: 12),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kGreenColor)
                          ),
                          child: Text(
                            'Home Cleaning',
                            style: TextStyle(color: kGreenColor),
                          )
                      ),
                      SizedBox(width: 12),
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kGreenColor)
                          ),
                          child: Text(
                            'All',
                            style: TextStyle(color: kGreenColor),
                          )
                      ),

                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Text(
                        '9 Result Found',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-ExtraBold',
                          fontSize: 18,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    ServiceCardMedium('Get a Haircut','assets/images/cards/haircut-small.jpg'),
                    ServiceCardMedium('Solving Puzzle with kids','assets/images/cards/kids.jpg'),
                    ServiceCardMedium('Personal Trainer Gym','assets/images/cards/gym.jpg'),
                    ServiceCardMedium('Walking your dogs','assets/images/cards/walk.jpg'),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
