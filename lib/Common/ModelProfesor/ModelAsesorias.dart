import 'package:flutter/material.dart';

import '../Components/Constants.dart';
import 'package:intl/intl.dart';

class ModelAsesorias extends Card {
  const ModelAsesorias(
      this.materia, this.totalAlumnos, this.capacidad, this.lugar, this.time,
      {super.key});
  final String time;
  final String materia;
  final int totalAlumnos;
  final int capacidad;
  final String lugar;
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
            leading: Text("$totalAlumnos/$capacidad"),
            title: Text(materia),
            subtitle: Text(lugar),
            trailing: BuildTime()));
  }

  BuildTime() {
    DateTime date = DateTime.parse(time);
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
