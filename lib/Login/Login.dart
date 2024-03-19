import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:asesorias_app_v2/Common/ThemeHelper.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  //const Login({Key? LLave}) : super(key: LLave);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
///variables
  double HeaderAlt=220;
  double Logsize=80;
  Key FormKey=GlobalKey<FormState>();

  ///Fnciones
  @override
  Widget build(BuildContext context) {
    style: ThemeHelper().buttonStyle();
    child: Padding(
    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
    child: Text('Sign In'.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
    );
    onPressed: (){
    //After successful login we will redirect to profile page.
    // Let's create profile page now
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePa7ge()));
    };
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 100),
                const Image(
                    image: AssetImage('Images/BUAP-Logo.png'),
                    //height: Logsize ,
                    //width: Logsize,
                ),
                const Text(
                  'Asesorias Buap',
                  style: TextStyle(
                    fontSize: 30,

                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                  child: Column(
                    children: [
                      const Text(
                        'Inicia sesion en tu cuenta',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 30.0),
                      Form(
                          key: FormKey,
                          child: Column(
                            children: [
                              Container(
                                decoration: ThemeHelper().inputBoxDecorationShaddow(),
                                child: TextField(
                                  decoration: ThemeHelper().textInputDecoration('Nombre de usuario', 'Inserta tu nombre'),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                decoration: ThemeHelper().inputBoxDecorationShaddow(),
                                child: TextField(
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration('Password', 'Inserta tu contraseña'),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10,0,10,20),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    //Navigator.push( context, MaterialPageRoute( builder: (context) => ForgotPasswordPage()), );
                                  },
                                  child: const Text( "Olvidaste tu contraseña?", style: TextStyle( color: Colors.grey, ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                decoration: ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  onPressed: () { 
                                      //    TODO: PATH TO login in students or teachers
                                   },
                                  child: Text("Iniciar Sesion"),
                                  
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10,20,10,20),
                                child: Text.rich(
                                    TextSpan(
                                        children: [
                                          const TextSpan(text: "No tienes una cuenta? "),
                                          TextSpan(
                                            text: 'Crear',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = (){
                                                Navigator.pushNamed(context, '/NewAccount' );
                                              },
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary),
                                          ),
                                        ]
                                    )
                                ),
                              ),
                            ],
                          ),
                      ),
                    ]
                  ),

                ),


              ],
          ),
          ),
        )
      );
  }
}
