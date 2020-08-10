import 'package:flutter/material.dart';
import 'package:flutter_camping_app/themes/constant.dart';

class CardDestino extends StatelessWidget {
  
  final String img;
  final String valor;
  final String titulo;
  final String subTitulo;
  final String visu;
  
  const CardDestino({
    Key key,
    @required this.size, this.img, this.valor, this.titulo, this.subTitulo, this.visu,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: size.width * 0.60,
      height: size.height * 0.40,
      // width: 200,
      // height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            // width: 200,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                textBlack.withOpacity(0.9),
                textBlack.withOpacity(0.0)
              ],
              begin: FractionalOffset(0, 1),
              end: FractionalOffset(0, 0)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
                      color: primary,
                      onPressed: (){},
                      child: Text(
                        'R\$ $valor',
                        style: TextStyle(color: textWhite),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Text(titulo, style: TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5),
                      Text(subTitulo, style: TextStyle(color: textWhite.withOpacity(0.6)),),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                        ]
                      ),
                      SizedBox(height: 40),
                      Text('$visu Visualizações', style: TextStyle(color: textWhite.withOpacity(0.6)),),
                    ]
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}