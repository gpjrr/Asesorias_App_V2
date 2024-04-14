import 'package:flutter/material.dart';

import '../Constants.dart';

class ModelEmail extends Card{
   const ModelEmail( this.materia,this.alumno,this.matricula, {super.key} );
    final String materia;
    final String alumno;
    final int matricula;
  @override
  Widget build(BuildContext context){
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      color: Constants.Lightray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            title: Text(materia,style: const TextStyle(fontSize: 20)),
            subtitle: Text("$alumno  $matricula"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('ACEPTAR'),
                onPressed: () {
                  //TODO: Delete Request
                },
              ),
              const SizedBox(width: 5),
              TextButton(
                child: const Text('RECHAZAR'),
                onPressed: () {/* ... */},
              ),
                const SizedBox(width: 20),
            ],
          )
        ],
      )
    );
  }
}