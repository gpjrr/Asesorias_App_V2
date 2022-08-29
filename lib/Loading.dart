import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:asesorias_app_v2/ThemeHelper.dart';
//import 'package:fl'
class Loading extends StatefulWidget {
  //const Loading({Key? key}) : super(key: key);
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void TiempoEsperando()  async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, '/Login' );
  }

  @override
  void initState(){
    super.initState();
    TiempoEsperando();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper().ColorAzul(),
      body: Center(
      ///  SpinKitWanderingCubes
        child:  SpinKitFadingFour(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
