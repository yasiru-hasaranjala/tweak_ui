import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';

class SearchBarFavourite extends StatelessWidget {
  final bool type;

  SearchBarFavourite(this.type,);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: kShadowColor2,
              borderRadius: BorderRadius.circular(15),
            ),
            child:TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: !type ? "Search by name" :"Massage",
                hintStyle: TextStyle(
                  fontFamily: 'HKGrotesk-Regular',
                  fontSize: 14,
                  color: kTextColor,
                  height: 1,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kGreenColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SvgPicture.asset(
              "assets/icons/filter.svg",
              width: 36,
              color: kPrimaryLightColor,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
