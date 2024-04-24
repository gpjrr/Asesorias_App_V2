import 'package:asesorias_app_v2/Common/Components/ModelAsesorias.dart';
import 'package:flutter/material.dart';

import '../Common/Components/TextBar.dart';
import '../Common/Constants.dart';

class ClassList extends StatefulWidget {
  const ClassList({super.key});

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  List<Card> Cards = [];
  @override
  void initState() {
    // TODO: implement initState
    Cards.add(const ModelAsesorias(
        "Algebra", 4, 10, "Salon de clases", '2024-03-25 18:00:00Z'));
    Cards.add(const ModelAsesorias(
        "Matematicas Aplicadas", 4, 4, "Cubiculo", '2024-02-20 09:30:00Z'));
    Cards.add(const ModelAsesorias(
        "Calculo Integral", 1, 3, "Laboratorio", '2024-02-12 12:12:00Z'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: TextBar("Asesorias Pendientes"),
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
