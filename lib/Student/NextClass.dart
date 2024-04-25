import 'package:flutter/material.dart';

import '../Common/Components/ModelNextClass.dart';
import '../Common/Components/TextBar.dart';
import '../Common/Pages/Constants.dart';

class NextClass extends StatefulWidget {
  const NextClass({super.key});

  @override
  State<NextClass> createState() => _NextClassState();
}

class _NextClassState extends State<NextClass> {
  List<Card> Cards = [];
  @override
  void initState() {
    // TODO: implement initState
    Cards.add(const ModelNextClass("Algebra","Salon de clases","Ema 5", "0", "3D", '2024-03-25 18:00:00Z') );
    Cards.add(const ModelNextClass("Programacion","cubiculo", "CC03", "3", "135", '2024-03-26 14:30:00Z') );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: TextBar("Asesorias por asistir"),
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
          itemCount: 2,
          itemBuilder: (context, index) {
            return Cards[index];
          },
        )));
  }
}
