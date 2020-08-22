import 'package:flutter/material.dart';
import 'package:tweak/constants.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(20),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Private',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 14,
                            color: kPrimaryColor,
                            height: 1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '\$100',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 12,
                                color: kPrimaryColor,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'For 1 person only',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                        Text(
                          'Person',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: kShadowColor2,
                    ),
                    Me(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(20),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Shared',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 14,
                            color: kPrimaryColor,
                            height: 1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '\$60',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 12,
                                color: kPrimaryColor,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'For 2 person only',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                        Text(
                          'each',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: kShadowColor2,
                    ),
                    Me(),
                    InviteFriend()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(20),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Group',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 14,
                            color: kPrimaryColor,
                            height: 1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '\$30',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Medium',
                                fontSize: 12,
                                color: kPrimaryColor,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Minimum for 4 persons',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                        Text(
                          'each',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Medium',
                            fontSize: 12,
                            color: kTextColor,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: kShadowColor2,
                    ),
                    Me(),
                    InviteFriend(),
                    InviteFriend(),
                    InviteFriend(),
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
class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/user.jpg'
                ),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10,right: 3),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      topRight:  Radius.circular(23),
                      bottomRight:  Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Me',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Bold',
                          fontSize: 14,
                          color: kPrimaryColor,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        'New York, USA',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 10,
                          color: kPrimaryColor,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kGreenColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Book',
              style: TextStyle(
                color: kPrimaryLightColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InviteFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kShadowColor2,
            ),

            child: Icon(
              Icons.add,
              color: kTextColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10,right: 3),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      topRight:  Radius.circular(23),
                      bottomRight:  Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Invite Your Friend',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Bold',
                          fontSize: 14,
                          color: kPrimaryColor,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        'New York, USA',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 10,
                          color: kPrimaryColor,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kGreenColor),
            ),
            child: Text(
              'Invite',
              style: TextStyle(
                color: kGreenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
