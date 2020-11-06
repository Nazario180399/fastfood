
import 'package:flutter/material.dart';
import 'package:helloworld/Providers/UserPrv.dart';
import 'package:helloworld/screens/welcome.dart';
import 'package:helloworld/screens/splash.dart';
import 'package:provider/provider.dart';



void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserPrv()),
    ],
    child: App(),
  ),
  );
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAST-FOOD APP',
    //home:Welcome()
     home: Scaffold(
          body: PageView(physics: BouncingScrollPhysics(), children: <Widget>[
        Splash(),
        Welcome(),
      ])),
    );
  }
}
