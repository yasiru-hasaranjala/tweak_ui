import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/details.dart';

class ServiceCard extends StatelessWidget {

  final title;
  final String path;
  ServiceCard(this.title,this.path);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Container(
          width: 250,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(path),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight:  Radius.circular(23),
                          topLeft:  Radius.circular(23),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: new GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/home-card.svg',
                          ),
                        ),
                        onTap: (){

                        },
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Bold',
                                fontSize: 16,
                                color: kPrimaryLightColor,
                                height: 1,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'New York, USA',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 12,
                                color: kPrimaryLightColor,
                                height: 1,
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      bottomRight:  Radius.circular(20),
                      bottomLeft:  Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Starting from',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Medium',
                              fontSize: 12,
                              color: kTextColor,
                              height: 1,
                            ),
                          ),
                          Text(
                            'Ratings',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Medium',
                              fontSize: 12,
                              color: kTextColor,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '\$120',
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
                              SvgPicture.asset(
                                'assets/icons/star.svg',
                                alignment: Alignment.bottomCenter,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                '4.8 / 5.0',
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
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(title,path);
            },
          ),
        );
      },
    );
  }
}


