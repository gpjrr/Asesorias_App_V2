import 'package:asesorias_app_v2/Common/Components/TextFieldCons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Components/TextBar.dart';
import 'Constants.dart';

class Profile extends StatefulWidget {
  const Profile(this.user, {super.key});
  final user;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController name = new TextEditingController();
  TextEditingController apellidos = new TextEditingController();
  TextEditingController edad = new TextEditingController();
  TextEditingController tipousuario = new TextEditingController();
  TextEditingController matricula = new TextEditingController();
  TextEditingController correo = new TextEditingController();
  var list;
  String avatar="";
  @override
  void initState() {
    // TODO: implement initState
    if( widget.user ==0 )
      list=["Erwin","Romero Ramos","35","profesor","201831425","erwin20rr@hotmail.com"];
    else
      list=["Roberto","Gomez Benitez","19","Alumno","201523564","juanitoprz@hotmail.com"];

    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: TextBar(list[3]),
          backgroundColor: Constants.azulClaro,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  minRadius: 75,
                  maxRadius: 75,
                  backgroundColor: Constants.azulObscuro,
                  child: Text(list[3].toString()),
                ),
                TextFieldCons(
                    start: list[0].toString(),
                    control: name,
                    hint: "Nombre",
                    read: true),
                TextFieldCons(
                    start: list[1].toString(),
                    control: apellidos,
                    hint: "Apellidos",
                    read: true),
                TextFieldCons(
                    start: list[2].toString(),
                    control: edad,
                    hint: "Edad",
                    read: true,
                    type: TextInputType.number),
                TextFieldCons(
                    start: list[3].toString(),
                    control: tipousuario,
                    hint: "Tipo de cuenta",
                    read: true),
                TextFieldCons(
                    start: list[4].toString(),
                    control: matricula,
                    hint: "Matricula",
                    read: true),
                TextFieldCons(
                    start: list[5].toString(),
                    control: correo,
                    hint: "Correo Electronico",
                    read: true),
              ]),
        ));
  }
}
