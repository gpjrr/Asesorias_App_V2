import 'package:flutter/material.dart';

import '../Models/ModelEmail.dart';
import '../../Common/Components/TextBar.dart';
import '../../Common/Pages/Constants.dart';

class EmailList extends StatefulWidget {
  const EmailList({super.key});

  @override
  State<EmailList> createState() => _EmailListState();
}

class _EmailListState extends State<EmailList> {
  List<Card> Cards = [];
  @override
  void initState() {
    Cards.add(const ModelEmail("Algebra", "Erwin Romero Ramos", 201762426));
    Cards.add(const ModelEmail(
        "Matematicas Aplicadas", "Judith Gonzalez", 201831425));
    Cards.add(const ModelEmail("Algebra", "Erwin Romero Ramos", 201635468));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: TextBar("Lista de solicitudes"),
          backgroundColor: Constants.azulClaro,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close_sharp),
              tooltip: 'Cerrar Cuenta.',
              onPressed: () {
                // handle the press
                Navigator.pop(context);
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
