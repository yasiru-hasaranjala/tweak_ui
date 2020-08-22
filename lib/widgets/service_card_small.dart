import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';

class ServiceCardSmall extends StatelessWidget {

  final title;
  final String path;
  ServiceCardSmall(this.title,this.path);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        shadowColor: kShadowColor3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Container(
          width: 200,
          child: Row(
            children: <Widget>[
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  path,
                  fit: BoxFit.fitHeight,
                  width: 60,
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
                            title,
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Bold',
                              fontSize: 14,
                              color: kPrimaryColor,
                              height: 1,
                            ),
                          ),
                          Text(
                            'New York, USA',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 10,
                              color: kPrimaryColor,
                              height: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 12,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 12,
                                  ),
                                  SizedBox(width:4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 12,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 12,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 12,
                                    color: kShadowColor3,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '(4.8)',
                                    style: TextStyle(
                                      fontFamily: 'HKGrotesk-Medium',
                                      fontSize: 10,
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
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      onTap: (){},
    );
  }
}

