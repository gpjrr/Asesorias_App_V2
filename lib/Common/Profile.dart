import 'package:asesorias_app_v2/Common/Components/TextFieldCons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Components/TextBar.dart';
import 'Constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    final TextEditingController name= new TextEditingController();
    TextEditingController apellidos= new TextEditingController();
    TextEditingController edad= new TextEditingController();
    TextEditingController tipousuario= new TextEditingController();
    TextEditingController matricula= new TextEditingController();
    TextEditingController correo= new TextEditingController();

  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        /// TODO: insert button to create a new place 
        title: const TextBar("Perfil"),
        backgroundColor: Constants.azulClaro,
      ),
       
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Constants.azulObscuro,
            child: const Text('PR'),
          ),            
          TextFieldCons(start: "Erwin", control: name, hint: "Nombre",read:  true),
          TextFieldCons(start: "Romero Ramos", control: apellidos, hint: "Apellidos",read:  true),
          TextFieldCons(start: "15", control: edad, hint: "Apellidos",read:  true,type: TextInputType.number),
          TextFieldCons(start: "profesor", control: tipousuario, hint: "Tipo de cuenta",read:  true),
          TextFieldCons(start: "201831425", control: matricula, hint: "Matricula",read:  true),
          TextFieldCons(start: "erwin20rr@hotmail.com", control: correo, hint: "Correo Electronico",read:  true),
        ]
      ),
      )
    );
  }
}