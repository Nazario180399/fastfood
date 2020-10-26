import 'dart:ui';

import 'package:flutter/material.dart';
class Loginn extends StatefulWidget {
  const Loginn({Key key}) : super(key: key);

  @override
  _LoginnState createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  String nombre="";
  final nombrecontroller=TextEditingController();

  @override
  void dispose(){

    nombrecontroller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child:Column(
          children:[
          TextField(
            controller: nombrecontroller,
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(vertical:15.0,horizontal:10.0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(250, 50, 150, 255),
                  width: 1.5,
                  style: BorderStyle.solid,
                ),
              ),
              prefixIcon: Icon(Icons.person),
              hintText: 'Escribe tu nombre',
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black26,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: TextButton(
              onPressed: (){
                nombre=nombrecontroller.text;
                print("El nombre es: $nombre");
              },
              child: Text(
                'Ingresar',
                style: TextStyle(color: Colors.white),

              ),
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blueAccent
                 ),
               ),
              ),
          ),
          Column(
            children: [
              Text('Hola: '),
              Text(nombre),
            ],
          ),
          ],
        ),

      ),
    );
  }
}