import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';

class DrawerLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kGreenColor,
                  ),
                  child: Text(
                    'T',
                    style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 16
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 40,
                  child: SvgPicture.asset('assets/icons/tweakapp.svg')
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
            ),
          ),
          Container(
            color: kPrimaryLightColor,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child: Text(
                    'Chats',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-ExtraBold',
                      fontSize: 16,
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
                            'assets/icons/navBar/chat.svg',
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Chat with Tweaked',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: kPrimaryColor,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: kShadowColor1,
                  height: 1,
                  thickness: 1,
                  indent: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child: Text(
                    'Helps',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-ExtraBold',
                      fontSize: 16,
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
                            'assets/icons/navBar/request.svg',
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Request a Service',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: kPrimaryColor,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: kShadowColor1,
                  height: 1,
                  thickness: 1,
                  indent: 20,
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/icons/navBar/provider.svg',
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Become a Provider',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: kPrimaryColor,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: kShadowColor1,
                  height: 1,
                  thickness: 1,
                  indent: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 20,left: 20),
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-ExtraBold',
                      fontSize: 16,
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
                            'assets/icons/navBar/about.svg',
                          ),
                          SizedBox(width: 15),
                          Text(
                            'About Us',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: kPrimaryColor,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: kShadowColor1,
                  height: 1,
                  thickness: 1,
                  indent: 20,
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/icons/navBar/version.svg',
                          ),
                          SizedBox(width: 15),
                          Text(
                            'App Version',
                            style: TextStyle(
                              fontFamily: 'HKGrotesk-Regular',
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: kPrimaryColor,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: kShadowColor1,
                  height: 1,
                  thickness: 1,
                  indent: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
