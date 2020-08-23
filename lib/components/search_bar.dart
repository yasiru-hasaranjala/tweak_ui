import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/widgets/bottomsheet.dart';

class SearchBar extends StatelessWidget {
  final bool type;

  SearchBar(this.type,);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: kShadowColor2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: !type ? "Find Tweaks for Home, Family or Self" :"Massage",
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
          Row(
            children: <Widget>[
              Container(
                height: 30,
                child: !type ? VerticalDivider(
                  color: kTextColor.withOpacity(0.5),
                  thickness: 2,
                ) :
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: kTextColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home, color: kPinkColor,),
                      Text(
                        ' Your Place ',
                        style: TextStyle(
                          color: kPinkColor,
                          fontSize: 13
                        ),
                      ),
                      Icon(Icons.clear,color: kTextColor,),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/filter.svg", width: 30,),
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) => BottomSheetShow(),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
