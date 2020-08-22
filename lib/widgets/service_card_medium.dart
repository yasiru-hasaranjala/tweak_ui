import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';

class ServiceCardMedium extends StatelessWidget {

  final title;
  final String path;
  ServiceCardMedium(this.title,this.path);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Card(
        elevation: 1,
        shadowColor: kShadowColor3,
        child: Container(
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(path),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      height: 130,
                      padding: EdgeInsets.fromLTRB(5, 10, 3, 10),
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.only(
                          topRight:  Radius.circular(23),
                          bottomRight:  Radius.circular(23),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Bold',
                              fontSize: 18,
                              color: kPrimaryColor,
                              height: 1,
                            ),
                          ),
                          Text(
                            'New York, USA',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
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
                                    width: 14,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 14,
                                  ),
                                  SizedBox(width:4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 14,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 14,
                                  ),
                                  SizedBox(width: 4),
                                  SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    alignment: Alignment.center,
                                    width: 14,
                                    color: kShadowColor3,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '(4.8)',
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
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: kTextColor,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2.4 km away',
                                style: TextStyle(
                                  fontFamily: 'HKGrotesk-Medium',
                                  fontSize: 14,
                                  color: kPrimaryColor,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
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

