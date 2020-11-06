
import 'package:flutter/material.dart';
import 'package:helloworld/screens/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 239),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/image/balloon-shape.png'),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Image(
              image: AssetImage('assets/image/FastFood-Logo.png'),
            ),
          )),
          Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
            child: Image(
              image: AssetImage('assets/image/online_groceries.png'),
            ),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
              child: Text(
                'El directorio de comida',
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 24.0,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                'Busca.Encuentra.Pide',
                style: TextStyle(
                    color: Color.fromARGB(71, 34, 18, 1),
                    fontFamily: "Poppins-Bold",
                    fontSize: 16.0,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Recibe.Disfruta',
                style: TextStyle(
                  color: Color.fromARGB(71, 34, 18, 1),
                  fontFamily: "Poppins-Bold",
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                minWidth: 335.0,
                height: 60.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.orange,
                child: Text(
                  'INICIA AHORA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
