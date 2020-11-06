//nazario
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:helloworld/Providers/UserPrv.dart';

import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  String nombre;
  Dashboard(this.nombre);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);
    var user = userProvider.user;

    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 249, 239),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //AppBar
              Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xfff44336),
                    border: Border.all(
                      width: 5,
                      color: Color(0xfff44336),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Hola ' + widget.nombre,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              flex: 7,
                            ),
                            Expanded(
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Image.asset(
                                  "assets/image/author.png",
                                  colorBlendMode: BlendMode.color,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              '¿Que quieres comer hoy?',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 15, 10, 5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFC836E),
                              borderRadius: BorderRadius.circular(15)),
                          child: TextFormField(
                            textCapitalization: TextCapitalization
                                .sentences, //Orlando Ortiz orlando ortiz
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.text,

                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 10.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffFC836E),
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                              hintText: 'Buscar platilos o restaurantes',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
//Fin AppBar
              Container(
                constraints: BoxConstraints(minWidth: double.infinity),
                decoration: BoxDecoration(

                    // podria ir el codigo
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                      child: Text(
                        'Populares cerca de ti',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
// empiez codigo prueba
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/burger.jpeg",
                              width: 190.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Mc Burger', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Alitas Hamburgesa Nachos',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF0D3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        size: 18.0,
                                      ),
                                      Text(
                                        '300m',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF0D3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 18.0,
                                      ),
                                      Text(
                                        '20min',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

//termina codigo prueba TARJETA 1

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
// EMPIEZA TARJETA 2
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/tacos.jpeg",
                              width: 190.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Tacos Tao', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Tacos al pastor Gringas',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '4.0',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF0D3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_location_rounded,
                                        size: 18.0,
                                      ),
                                      Text(
                                        '300m',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 65.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF0D3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 18.0,
                                      ),
                                      Text(
                                        '20min',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
// termina la tarjeta 2
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                  ],
                ),
              ),

// terminan LAS TARJETAS
              Padding(
                padding: const EdgeInsets.only(right: 230.0),
                child: Text(
                  'Explorar categorias',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
              ),
// empiezan las categorias
              Container(
                height: 110.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
// empiez codigo prueba
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.orange[900],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/burg.png",
                              color: Colors.orange[50],
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '     Rapida', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange[50],
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            child: Text(
                              '  150 Lugares',
                              style: TextStyle(
                                color: Colors.orange[50],
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//termina codigo prueba TARJETA 2

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
// empieza la segunda categoria
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.deepPurple[500],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/ensalada.png",
                              color: Colors.orange[50],
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '   Ensalada', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange[50],
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            child: Text(
                              '   20 Lugares',
                              style: TextStyle(
                                color: Colors.orange[50],
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    // termina la seguda categoria
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
// empieza la tercera categoria

                    Container(
                      width: 100.0,
                      color: Colors.lightGreen[700],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/post.png",
                              color: Colors.orange[50],
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '     Postres', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange[50],
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            child: Text(
                              '   43 Lugares',
                              style: TextStyle(
                                color: Colors.orange[50],
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // termina la tercera  categoria
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    // empieza la cuarta categoria
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.yellow[800],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/maris.png",
                              color: Colors.orange[50],
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              '     Mariscos', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange[50],
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 0.0),
                            child: Text(
                              '   71 Lugares',
                              style: TextStyle(
                                color: Colors.orange[50],
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // termina la seguda categoria
                  ],
                ),
              ),
              // TERMINAN TODAS LAS CATEGORIAS
// EMPIEZA LO RECOMENDADO
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270.0),
                child: Text(
                  'Recomendado',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
              ),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
// empiez codigo prueba
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/sushi.jpeg",
                              width: 190.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Shusi Grill', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Shusi, Pescado, Ramen, Rollos',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

//termina codigo prueba TARJETA 1

                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
// EMPIEZA TARJETA 2
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/image/platillo.jpeg",
                              width: 190.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Boxito Lindo', // 'Mc Burger',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Comida tradicional yucateca',
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
// termina la tarjeta 2
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                    ),
                  ],
                ),
              ),
              // TERMINAN LAS CATEGORIAS
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText, Icon icon) =>
      InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        prefixIcon: IconButton(
          icon: icon,
          onPressed: () {
            print('clic en el icon button');
          },
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0x90FFF0D7),
        ),
        fillColor: Color(0xffFC836E),
        filled: true,
      );
}
