import 'package:flutter/material.dart';

class NextClass extends StatefulWidget {
  const NextClass({super.key});

  @override
  State<NextClass> createState() => _NextClassState();
}

class _NextClassState extends State<NextClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            /// TODO: insert button to create a new place
            //title: const TextBar("Asesorias Pendientes"),
            //backgroundColor: Constants.azulClaro,
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
