import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tweak/components/search_bar.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/widgets/service_card_medium.dart';

class ListSearch extends StatelessWidget {
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
                          'Search',
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
                  SearchBar(true),
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
                    ServiceCardMedium('Massage and Spa','assets/images/cards/kites.jpg'),
                    ServiceCardMedium('Acupuncture Massage','assets/images/cards/yoga.jpg'),
                    ServiceCardMedium('Beauty Massage','assets/images/cards/kites.jpg'),
                    ServiceCardMedium('Get a Haircut','assets/images/cards/haircut-small.jpg'),
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
