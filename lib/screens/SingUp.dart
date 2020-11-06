import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/Providers/UserPrv.dart';
import 'package:helloworld/models/user.dart';
import 'package:helloworld/screens/welcome.dart';
import 'package:helloworld/utils/string_admin.dart';

import 'package:provider/provider.dart';

class SingUp extends StatefulWidget {
  SingUp({Key key}) : super(key: key);
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  String nombre = "";
  String email = "";
  String password = "";
  User user = User();
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 239),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [Text('Sing Up')],
        ),
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Welcome()),
            );
          },
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 255, 249, 239),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  child: Image.asset(
                    "assets/image/singup.jpg",
                    colorBlendMode: BlendMode.color,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]+|\s'))
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Ingrese su nombre';
                            }
                            if (value.contains(new RegExp(r'[0-9]'))) {
                              return 'No puede ingresar numeros';
                            }
                            if (value.length < 4) {
                              return 'Nombre demasiado corto';
                            }
                            user.name = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Nombre',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s'))
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Debes de ingresar un Email';
                            }
                            if (!StringAdm.validarEmail(value)) {
                              return 'Ingresa un Email valido';
                            }
                            user.email = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Ingrese su número de telefono';
                            }
                            if (value.length != 10) {
                              return 'Ingresa 10 mueros exactos';
                            }
                            user.phone = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Telefono',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value.length < 4) {
                              return 'Contraseña demasiado corta';
                            }
                            user.password = value;
                            return null;
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Contraseña',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (!StringAdm.validarPasswords(
                                value, user.password)) {
                              return 'Las contraseñas no coinciden';
                            }
                            return null;
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Confirmar contraseña',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 70.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: LogginButton(
                                formKey: _formKey,
                                user: user,
                                userProvider: userProvider),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogginButton extends StatelessWidget {
  const LogginButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.user,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  final User user;
  final UserPrv userProvider;

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (!_formKey.currentState.validate()) {
          return;
        }

        print('Todo bien');
        print(user.email);
        final sb = SnackBar(
          content: Text('¡Los datos se han guardado!'),
        );

        Scaffold.of(context).showSnackBar(sb);
        userProvider.user = user;
        userProvider.users = user;
        _formKey.currentState.save();
        await Future.delayed(Duration(seconds: 3));
        Navigator.pop(context);
      },
      child: Text(
        'CREAR CUENTA',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
         // Color(0xffFC4F32),
         Colors.orange
        ),
      ),
    );
  }
}