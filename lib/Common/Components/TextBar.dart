import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  const TextBar( this.title, {super.key});  
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        backgroundColor: Constants.azulClaro
        ),
      
       
      );
  }
}