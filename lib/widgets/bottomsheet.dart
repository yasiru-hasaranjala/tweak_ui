import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/components/rounded_button.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/list_search.dart';

class BottomSheetShow extends StatefulWidget {
  @override
  _BottomSheetShowState createState() => _BottomSheetShowState();
}

class _BottomSheetShowState extends State<BottomSheetShow> {

  RangeValues _currentRangeValues = const RangeValues(0, 40);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.only(
          topRight:  Radius.circular(35),
          topLeft:  Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: kShadowColor2,
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 6),
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 6,
                decoration: BoxDecoration(
                  color: kShadowColor2,
                  borderRadius: BorderRadius.circular(3),
                ),
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20,left: 20),
              child: Text(
                'Service Location',
                style: TextStyle(
                  fontFamily: 'HKGrotesk-ExtraBold',
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/navBar/any.svg',
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Any',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 16,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: kShadowColor2,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,size: 15,color: kShadowColor2,),
                  ),
                ],
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/navBar/yourplace.svg',
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Your Place',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 16,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,size: 15,color: kPrimaryLightColor,),
                  ),
                ],
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/navBar/ourplace.svg',
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Our Place',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 16,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: kShadowColor2,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,size: 15,color: kShadowColor2,),
                  ),
                ],
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/navBar/outside.svg',
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Outside',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 16,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: kShadowColor2,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,size: 15,color: kShadowColor2,),
                  ),
                ],
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/navBar/virtual.svg',
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Virtual',
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Regular',
                          fontSize: 16,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: kShadowColor2,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check,size: 15,color: kShadowColor2,),
                  ),
                ],
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20,left: 20),
              child: Text(
                'Other Filters',
                style: TextStyle(
                  fontFamily: 'HKGrotesk-ExtraBold',
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Distance',
                      style: TextStyle(
                        fontFamily: 'HKGrotesk-Regular',
                        fontSize: 16,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Text(
                    '2.3 miles',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-Regular',
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            RangeSlider(
              values: _currentRangeValues,
              activeColor: kGreenColor,
              inactiveColor: kShadowColor2,
              min: 0,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            RoundedButton(
              color: kGreenColor,
              text: "Apply",
              press: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListSearch();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
