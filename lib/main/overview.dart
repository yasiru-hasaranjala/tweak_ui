import 'package:flutter/material.dart';
import 'package:tweak/constants.dart';

class Overview extends StatelessWidget {

  final List<String> photos = [
    'assets/images/photos/photo-1.jpg',
    'assets/images/photos/photo-2.jpg',
    'assets/images/photos/photo-3.jpg',
    'assets/images/photos/photo-4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            Container(
              width: size.width*0.85,
              child: Flexible (
                child: Text(
                  'Good internet, nice people and'
                      ' you alwayshave a comfy feeling '
                      'working here. Amazing space for '
                      'getting work done. Super nice '
                      'and cl can you'
                      ' you alwayshave a comfy feeling '
                      'working here. Amazing space for '
                      'getting work done. Super nice ',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Regular',
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: size.width*0.86,
              child: Flexible (
                child: Text(
                  'Photos',
                  style: TextStyle(
                    fontFamily: 'HKGrotesk-Bold',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int i) {
                  return Transform.scale(
                    scale: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: AssetImage(
                              photos[i],
                            ),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: size.width,
                height: size.height*0.13,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.only(
                    topRight:  Radius.circular(34),
                    topLeft:  Radius.circular(34),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor2,
                      spreadRadius: 0.6,
                      blurRadius: 6,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Booking Price',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Bold',
                                fontSize: 14,
                                color: kTextColor,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '60\$\/',
                                  style: TextStyle(
                                    fontFamily: 'HKGrotesk-Bold',
                                    fontSize: 18,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'person',
                                  style: TextStyle(
                                    fontFamily: 'HKGrotesk-Bold',
                                    fontSize: 14,
                                    color: kTextColor,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15
                        ),
                        decoration: BoxDecoration(
                          color: kGreenColor.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            fontFamily: 'HKGrotesk-Bold',
                            fontSize: 18,
                            color: kPrimaryLightColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
