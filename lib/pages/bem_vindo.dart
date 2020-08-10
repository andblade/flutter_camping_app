import 'package:flutter/material.dart';
import 'package:flutter_camping_app/themes/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home.dart';

class BemVindo extends StatefulWidget {
  @override
  _BemVindoState createState() => _BemVindoState();
}

class _BemVindoState extends State<BemVindo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Imagem
              SvgPicture.asset(
                'assets/img/welcome_image.svg', width: MediaQuery.of(context).size.width * 0.7,
              ),

              // Descrição
              Column(
                children: <Widget>[
                  Text(
                    'Encontre o \nseu descanso',
                    style: appTitle, textAlign: TextAlign.center
                  ),
                  SizedBox(height: 20),
                  Text(
                    'reserve uma experiência única de acampamento em mais de 300 cabanas de acampamento, parque de RV, parques públicos e muito mais',
                    style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 14, height: 1.2),textAlign: TextAlign.center
                  ),
                ],
              ),

              // acessar
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: primary,

                onPressed: (){
                  /* 'pushReplacement' quando mudar de página
                  ao clicar em voltar, a página em questão nao volta */
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Home()));
                },

                child: Container(
                  width: double.infinity,
                  height: 45,
                  child: Center(
                    child: Text('Acesse Agora', style: TextStyle(color: textWhite, fontSize: 18))
                  ),
                )
              ),

            ],
          ),
        )
      ),
    );
  }
}