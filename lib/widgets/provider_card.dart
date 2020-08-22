import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweak/constants.dart';
import 'package:tweak/main/provider.dart';

class ProviderCard extends StatelessWidget {

  final title;
  final String path;
  ProviderCard(this.title,this.path);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Container(
          width: 150,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(path),
                          fit: BoxFit.cover,
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
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      bottomRight:  Radius.circular(20),
                      bottomLeft:  Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'HKGrotesk-Bold',
                      fontSize: 16,
                      color: kPrimaryColor,
                      height: 1,
                    ),
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
              return Provider(title,path);
            },
          ),
        );
      },
    );
  }
}


