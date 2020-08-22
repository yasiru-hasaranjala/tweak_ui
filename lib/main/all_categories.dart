import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/components/item_object.dart';
import 'package:tweak/widgets/categories.dart';

class AllCategories extends StatelessWidget {

  final List<ItemObject> cardRow1 = [
    ItemObject(path: 'assets/images/cards/cooking.jpg', title: 'Cooking Class'),
    ItemObject(path: 'assets/images/cards/painting.jpg', title: 'Interior Painting'),
  ];

  final List<ItemObject> iconCategory = [
    ItemObject(path: 'assets/icons/categories/teach.svg', title: 'Teach'),
    ItemObject(path: 'assets/icons/categories/outdoors.svg', title: 'Outdoors'),
    ItemObject(path: 'assets/icons/categories/outdoors.svg', title: 'Educate'),
    ItemObject(path: 'assets/icons/categories/cooking.svg', title: 'Experience'),
    ItemObject(path: 'assets/icons/categories/music.svg', title: 'Music'),
    ItemObject(path: 'assets/icons/categories/sport.svg', title: 'Sport'),
    ItemObject(path: 'assets/icons/categories/art.svg', title: 'Art'),
    ItemObject(path: 'assets/icons/categories/entertain.svg', title: 'Entertain'),
    ItemObject(path: 'assets/icons/categories/care.svg', title: 'Care'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        top: 35,
                        bottom: 15,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                                alignment: Alignment.topLeft,
                                width: 35,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: kPrimaryLightColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: kShadowColor2,
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child:Icon(Icons.close)
                            ),
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(height: 10),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Children',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          Container(
                              height: 270,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                                itemBuilder: (_, index) =>  Category(iconCategory[index].title,iconCategory[index].path),
                                itemCount: iconCategory.length,
                              )
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
                            child: Text(
                              'Parent',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 10),
                            child: Category('Assistance','assets/icons/categories/assistance.svg'),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Pets',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 10),
                            child: Category('Pet Sitter','assets/icons/categories/petSitter.svg'),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Caregiving',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 10),
                            child: Category('Caregiving','assets/icons/categories/caregiving.svg'),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'After School',
                              style: TextStyle(
                                fontFamily: 'HKGrotesk-Regular',
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 10),
                            child: Category('After school','assets/icons/categories/afterschool.svg'),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
