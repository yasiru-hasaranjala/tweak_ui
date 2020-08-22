import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/all_categories.dart';
import 'package:tweak/components/item_object.dart';

class Categories extends StatelessWidget {

  final List<ItemObject> iconCategory;
  final int itemCount;
  
  Categories(this.iconCategory,this.itemCount);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (_, index) =>  Category(iconCategory[index].title,iconCategory[index].path),
        itemCount: this.itemCount,
        )
    );
  }
}

class Category extends StatelessWidget {

  final title;
  final String path;
  Category(this.title,this.path);
  
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kPrimaryLightColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: kShadowColor1,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    path,
                    height: 10.0,
                    width: 10.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              onTap: (){
                if(title=='See All'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AllCategories();
                      },
                    ),
                  );
                }
              },
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'HKGrotesk-Regular',
                fontSize: 14,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
      onTap: (){

      },
    );
  }
}
