import 'package:flutter/material.dart';

import '../Common/Components/TextBar.dart';
import '../Common/Constants.dart';

class NextClass extends StatefulWidget {
  const NextClass({super.key});

  @override
  State<NextClass> createState() => _NextClassState();
}

class _NextClassState extends State<NextClass> {
  List<Card> Cards= [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        /// TODO: insert button to create a new place 
        title: TextBar("Asesorias Pendientes"),
        backgroundColor: Constants.azulClaro,
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.close_sharp),
          tooltip: 'Cerrar Cuenta.',
          onPressed: () {
            // handle the press
            Navigator.pop( context);
            Navigator.pushNamed(context, '/Login');
          },
        ),
      ],
    ),
        body: Center(
            child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Cards[index];
          },
        )));
  }
}