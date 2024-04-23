import 'package:asesorias_app_v2/Common/Components/TextBar.dart';
import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';
import '../Common/Components/ModelSalon.dart';

class PlacesList extends StatefulWidget {
  const PlacesList({super.key});

  @override
  State<PlacesList> createState() => _PlacesListState();
}

class _PlacesListState extends State<PlacesList> {
  List<Card> Cards = [];
  @override
  void initState() {
    // TODO: implement initState
    int size = 0;
    super.initState();

    /// nombre, edificio, piso, salon;
    Cards.add(const ModelSalon("Salon", "Ema 5", 0, "3D", 1));
    Cards.add(const ModelSalon("cubiculo", "CC03", 0, "135", 2));
    Cards.add(const ModelSalon("Salon Matematicas", "CC02", 1, "110", 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /// TODO: insert button to create a new place
          title: const TextBar("Area de Trabajo"),
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
