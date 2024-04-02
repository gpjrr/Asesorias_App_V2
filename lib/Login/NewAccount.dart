import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:asesorias_app_v2/Common/ThemeHelper.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State<NewAccount> createState() => _NewAccountState();
}
//TODO: Make new account view 

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.azulClaro,
      body: const SingleChildScrollView(

        child: Column(
          children: [],
        ),
      ),
    );
  }
}
