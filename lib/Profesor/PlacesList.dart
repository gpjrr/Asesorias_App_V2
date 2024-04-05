
import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatefulWidget {
  const PlacesList({super.key});

  @override
  State<PlacesList> createState() => _PlacesListState();
}

class _PlacesListState extends State<PlacesList> {
  List<Card> Cards= List.empty( );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /// nombre, edificio, piso, salon;
    Cards.add( const Card( child: ModelSalon( "Salon","Ema 5",0,"3D",1 ) ) );
    Cards.add( const Card( child: ModelSalon( "cubiculo","CC03",0,"135",2 ) ) );
    Cards.add( const Card( child: ModelSalon( "Salon Matematicas","CC02",1,"110",3 ) ) );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: ListView.builder(
          itemCount: Cards.length,
          itemBuilder: (context, index) {
            return Cards[index];
          },
        )
      )
    
    );


  }
}

class  ModelSalon  extends StatelessWidget {
  const ModelSalon( this.nombre, this.edificio, this.piso, this.salon,this.id, {super.key});  
  final String nombre;
  final String edificio;
  final int piso;
  final String salon;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Constants.azulClaro,
        child: ListTile(
              leading: Text("ID:$id"),
              title: Text(nombre),
              subtitle: Text("Edificio:$edificio/n floor:$piso Salon:$salon"),
            ),
      )
    );
  }
}



