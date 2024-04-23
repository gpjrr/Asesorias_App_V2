import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Common/Components/TextBar.dart';
import '../Common/Components/TextFieldCons.dart';
import '../Common/Constants.dart';

class NewClass extends StatefulWidget {

  TextEditingController materia = new TextEditingController();
  TextEditingController capacidad = new TextEditingController();
  TextEditingController lugar = new TextEditingController(); //list
  ///FECHA 
  ///HORA

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          /// TODO: insert button to create a new place
          title: const TextBar("Crear Nueva asesoria"),
          backgroundColor: Constants.azulClaro,
        ),
        body: Container(margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldCons(control: widget.materia, hint: "Materia"),
              const SizedBox(height: 10.0),
              TextFieldCons(control: widget.capacidad, hint: "Total de alumnos"),
              
              const SizedBox(height: 10.0),

            ],
            )
        ),


    );

  }
}
