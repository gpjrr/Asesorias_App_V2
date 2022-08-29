import 'package:asesorias_app_v2/ThemeHelper.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper().ColorAzul(),
      body: SingleChildScrollView(

        child: Column(
          children: [],
        ),
      ),
    );
  }
}
