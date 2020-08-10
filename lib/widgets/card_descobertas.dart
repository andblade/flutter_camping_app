import 'package:flutter/material.dart';
import 'package:flutter_camping_app/themes/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDescobertas extends StatelessWidget {
  
  final String img;
  final String text;
  
  const CardDescobertas({
    Key key, this.img, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            SvgPicture.asset(img),
            Text(text, style: TextStyle(color: textBlack.withOpacity(0.5)),)
          ],
        ),
      ),
    );
  }
}