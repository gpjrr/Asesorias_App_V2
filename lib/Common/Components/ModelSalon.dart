
import 'package:asesorias_app_v2/Common/Constants.dart';
import 'package:flutter/material.dart';

class  ModelSalon  extends Card  {
  const ModelSalon( this.nombre, this.edificio, this.piso, this.salon,this.id, {super.key});  
  final String nombre;
  final String edificio;
  final int piso;
  final String salon;
  final int id;

  @override
  Widget  build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      color: Constants.Lightray,
      child: ListTile(
        leading: Text("ID:$id"),
        title: Text(nombre),
        subtitle: Text("Edificio:$edificio/n floor:$piso Salon:$salon"),
      ),
    );
    
  }
}
