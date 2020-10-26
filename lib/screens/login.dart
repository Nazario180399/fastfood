import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor:Colors.orange,
        leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:(){},),
      ),
    body:  SingleChildScrollView(
    child:Container(
      color: Color.fromARGB(255, 255, 249, 239),
       child: Column(
         mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Center(//que puta te veez
         child:Padding(
           padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
           child: Image(
           image: AssetImage('assets/image/undraw_authentication_fsn5.png'),
       ),
         )
       ),
       Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
           child: Text(
             'Ingresa tus credenciales',
             style: TextStyle( color: Color.fromARGB(71, 34, 18,1),
             fontSize: 20.0,
             decoration: TextDecoration.none
             ),

           ),
         ),
       ),
       Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
           child: Text(
             'registradas para acceder',
             style: TextStyle( color: Color.fromARGB(71, 34, 18,1),
             fontSize: 20.0,
             decoration: TextDecoration.none
             ),

           ),
         ),
       ),
       Center(
         child: Padding(
           padding: const  EdgeInsets.fromLTRB(20.0,50.0,20.0,0.0),
           child: TextField(
             obscureText: false,
               decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                 prefixIcon:Icon(Icons.email,color: Colors.black,),
                labelText: 'Email',
              ),
           ),
         ),
       ),
       Center(
         child: Padding(
           padding: const  EdgeInsets.fromLTRB(20.0,20.0,20.0,0.0),
           child: TextField(
             
             obscureText: true,
             
               decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon:Icon(Icons.lock_sharp,color: Colors.black,),
                
                labelText: 'Password',
              ),
           ),
           
         ),
         
       ),
        Center(
         child:Padding(
           padding: const EdgeInsets.fromLTRB(0.0,50.0,0.0,0.0),
           child: FlatButton(
        onPressed: (){

        },
        minWidth: 364.0,
        height: 60.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color:Colors.orange,
        child: Text(
               'CONTINUAR',
               style: TextStyle( color: Colors.white,
               fontSize: 18.0,
               decoration: TextDecoration.none
               ),
        ),
       ),
         ),
       ),

        ],
       ),
      ),
    ),
    );
  }
}