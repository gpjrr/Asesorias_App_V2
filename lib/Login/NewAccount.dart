import 'package:flutter/material.dart';

import '../Common/Components/TextBar.dart';
import '../Common/Components/TextFieldCons.dart';
import '../Common/Constants.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccount();
}

class _NewAccount extends State<NewAccount> {
  TextEditingController name = new TextEditingController();
  TextEditingController apellidos = new TextEditingController();
  TextEditingController edad = new TextEditingController();
  TextEditingController tipousuario = new TextEditingController();
  TextEditingController matricula = new TextEditingController();
  TextEditingController correo = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: const TextBar("Nueva Cuenta"),
          backgroundColor: Constants.azulClaro,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldCons(control: name, hint: "Nombre"),
                TextFieldCons(
                  control: apellidos,
                  hint: "Apellidos",
                ),
                TextFieldCons(
                    control: edad, hint: "Edad", type: TextInputType.number),
                //TextFieldCons(control: tipousuario, hint: "Tipo de cuenta", read: true),
                //Todo:Add  Option List
                TextFieldCons(
                    control: matricula,
                    hint: "Matricula",
                    type: TextInputType.number),
                TextFieldCons(control: correo, hint: "Correo Electronico"),
                const SizedBox(height: 10.0),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Text color
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Constants.azulObscuro), // Button background color
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Text('Guardar Datos'),
                ),
                const SizedBox(height: 30.0),
              ]),
        ));
  }
}
