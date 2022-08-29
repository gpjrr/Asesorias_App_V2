import 'package:asesorias_app_v2/Login/NewAccount.dart';
import 'package:flutter/material.dart';
import 'package:asesorias_app_v2/Login/Login.dart';
import 'Loading.dart';

void main() => runApp( MaterialApp(

    initialRoute: '/',
    routes:{
        '/' : (context) => Loading(),
        '/Login' : (context) => Login(),
        '/NewAccount':(context) => NewAccount(),
      //visorunicipio
    }
));
