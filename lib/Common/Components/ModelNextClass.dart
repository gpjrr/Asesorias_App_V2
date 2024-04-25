import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Pages/Constants.dart';

class ModelNextClass extends Card {
  const ModelNextClass(this.materia,this.lugar,this.edificio,this.piso,this.salon,this.fecha,{super.key});
//Cards.add(const ModelNextClass("Algebra","Salon de clases","Ema 5", 0, "3D", '2024-03-25 18:00:00Z'));
final String materia;
final String lugar;
final String edificio;
final String piso;
final String salon;
final String fecha;
  @override
  Widget build(BuildContext context) {
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
        //leading: Text("$totalAlumnos/$capacidad"),
        title: Text(materia),
        subtitle: Text("Edificio:${edificio} piso:${piso} salon:$salon"),
        trailing: BuildTime()
      )
    );
  }
  BuildTime() {
    DateTime date = DateTime.parse(fecha);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(DateFormat('EEEE').format(date)),
        Text("${date.day}/${date.month}/${date.year}"),
        Text("${date.hour}:${date.minute}")
      ],
    );
  }
}


