import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}
//TODO: Make new account view 

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Constants.azulClaro,
      body: SingleChildScrollView(

        child: Column(
          children: [],
        ),
      ),
    );
  }
}
