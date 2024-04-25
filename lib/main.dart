import 'package:asesorias_app_v2/Login/NewAccount.dart';
import 'package:asesorias_app_v2/Common/Pages/Constants.dart';
import 'package:asesorias_app_v2/Profesor/NewClass.dart';
import 'package:asesorias_app_v2/Profesor/ProfesorHome.dart';
import 'package:asesorias_app_v2/Common/Pages/Loading.dart';
import 'package:asesorias_app_v2/Student/StudentHome.dart';

///todo: check lopading
import 'package:flutter/material.dart';
import 'package:asesorias_app_v2/Login/Login.dart';

import 'Student/NewAsesoria.dart';

const Color primaryColor = Color.fromARGB(255, 13, 170, 228);
void main() => runApp(MaterialApp(
      //TODO: always add the new page
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/Login': (context) => const Login(),
        '/NewAccount': (context) => const NewAccount(),
        '/ProfesorHome': (context) => const ProfesorHome(),
        '/NewAccount': (context) => const NewAccount(),
        '/NewClass': (context) => NewClass(),
        '/StudentHome': (context) => const StudentHome(),
        '/NewAsesoria':(context) => const   NewAsesoria(),
        //visorunicipio
      },
      theme: ThemeData(
          colorScheme: const ColorScheme(
        primary: Constants.azulObscuro,
        secondary: Constants.azulClaro,

        surface: Constants.blanco,
        background: Constants.blanco,
        error: Colors.red, // You can define error color if needed
        onPrimary: Colors.white, // Text color on primary color
        onSecondary: Colors.white, // Text color on secondary color
        onSurface: Colors.black, // Text color on surface color
        onBackground: Colors.black, // Text color on background color
        onError: Colors.white, // Text color on error color
        brightness: Brightness.light, // Adjust as needed
      )),
    ));
