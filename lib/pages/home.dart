import 'package:flutter/material.dart';
import 'package:flutter_camping_app/themes/constant.dart';
import 'package:flutter_camping_app/widgets/card_descobertas.dart';
import 'package:flutter_camping_app/widgets/card_destino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // campo de pesquisa
  TextEditingController _controllerPesquisa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    
    return Scaffold(
      // appBar: AppBar(
      //   leading: SvgPicture.asset('assets/img/burger_icon.svg'),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  color: bgColor,
                  image: DecorationImage(image: AssetImage('assets/img/tree_bg.png'), fit: BoxFit.cover)
                ),
                child: Padding(
                  
                  // imagem de fundo
                  padding: EdgeInsets.symmetric(vertical: 50),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      // Menu
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SvgPicture.asset ('assets/img/burger_icon.svg'),
                      ),
                      SizedBox(height: 30),
                      
                      // Perfil e Notificação
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SvgPicture.asset('assets/img/profile_icon.svg'),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Bem vindo',
                                      style: TextStyle(color: textWhite.withOpacity(0.7)),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Rogério Santos',
                                      style: TextStyle(color: textWhite, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SvgPicture.asset('assets/img/notification_icon.svg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),

                      // Pesquisar
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: textWhite,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(right: 30, left: 10),
                              child: TextField(
                                controller: _controllerPesquisa,
                                cursorColor: textBlack.withOpacity(0.5),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Pesquisar...',
                                  prefixIcon: Icon(LineIcons.search,color: textBlack.withOpacity(0.5)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      
                      // Descobertas
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text('Descobertas', style: appTitle,),
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                children: [
                                  CardDescobertas(
                                    img: 'assets/img/tent_icon.svg',
                                    text: 'Campus',
                                  ),
                                  // SizedBox(width: 10),
                                  CardDescobertas(
                                    img: 'assets/img/fishing_icon.svg',
                                    text: 'Fishing',
                                  ),
                                  // SizedBox(width: 10),
                                  CardDescobertas(
                                    img: 'assets/img/cooking_icon.svg',
                                    text: 'Cooking',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],  
                  ),
                ),
              ),

              // Outra metade
              Container(
                margin: EdgeInsets.only(top: size.height * 0.60),
                width: double.infinity,
                // height: size.height,
                decoration: BoxDecoration(
                  color: textWhite,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // linha cinza
                      SizedBox(height: 20),
                      Align(
                        child: Container(
                          width: size.width * 0.15,
                          height: 5,
                          decoration: BoxDecoration(
                            color: textBlack.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      // Destinos populares
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text('Destinos Populares',
                          style: TextStyle(color: textBlack.withOpacity(0.8), fontSize: 15, fontWeight: FontWeight.bold)
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              CardDestino(
                                size: size,
                                img: 'https://images.unsplash.com/photo-1550236520-7050f3582da0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                                valor: '59,90 / noite',
                                titulo: 'Sandy Rigde Camping',
                                subTitulo: 'canton',
                                visu: '84',
                              ),

                              CardDestino(
                                size: size,
                                img: 'https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                                valor: '89,90 / noite',
                                titulo: 'Montanhas Camping',
                                subTitulo: 'Montanhas',
                                visu: '124',
                              ),

                              CardDestino(
                                size: size,
                                img: 'https://images.unsplash.com/photo-1512815559754-ff91562a0c72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                                valor: '69,90 / noite',
                                titulo: 'Praia Camping',
                                subTitulo: 'Praia',
                                visu: '28',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}