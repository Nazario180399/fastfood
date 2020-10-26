import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    String nombre = "", email = "", telefono = "", contra = "", contra2 = "";

    final nombreC = TextEditingController();
    final emailC = TextEditingController();
    final telefonoC = TextEditingController();
    final contraC = TextEditingController();
    final contra2C = TextEditingController();

    @override
    void disponse() {
      nombreC.dispose();
      emailC.dispose();
      telefonoC.dispose();
      contraC.dispose();
      contra2C.dispose();
      super.dispose();
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sing up"),
          backgroundColor:Colors.orange,
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:(){},),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 255, 249, 239),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Image(
                        image: AssetImage('assets/image/singup.jpg'),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(
                          //autofocus: true,
                          controller: nombreC,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nombre",
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(
                              Icons.account_circle_sharp,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  10) //         <--- border radius here
                              ),
                        ),
                        child: TextField(
                          controller: emailC,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(fontSize: 18),
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 30,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  10) //         <--- border radius here
                              ),
                        ),
                        child: TextField(
                          controller: telefonoC,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Telefono",
                              hintStyle: TextStyle(fontSize: 18),
                              prefixIcon: Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  10) //         <--- border radius here
                              ),
                        ),
                        child: TextField(
                          controller: contraC,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          obscureText: true,
                          obscuringCharacter: "*",
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Contraseña",
                              hintStyle: TextStyle(fontSize: 18),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 30,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  10) //         <--- border radius here
                              ),
                        ),
                        child: TextField(
                          controller: contra2C,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          obscureText: true,
                          obscuringCharacter: "*",
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirmar contraseña",
                            hintStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        decoration: BoxDecoration(
                             color:Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        width: 300,
                        height: 65,
                        margin: EdgeInsets.only(top: 20),
                        child: FlatButton(
                          //splashColor: Colors.white,
                          //shape: CircleBorder(),
                          onPressed: () {
                            nombre = nombreC.text;
                            email = emailC.text;
                            telefono = telefonoC.text;
                            contra = contraC.text;
                            contra2 = contra2C.text;
                          },

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'REGISTRARSE',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
