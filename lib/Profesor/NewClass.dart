import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Common/Components/TextBar.dart';
import '../Common/Components/TextFieldCons.dart';
import '../Common/Pages/Constants.dart';

class NewClass extends StatefulWidget {
  TextEditingController materia = new TextEditingController();
  TextEditingController capacidad = new TextEditingController();
  TextEditingController lugar = new TextEditingController(); //list
  
  ///FECHA
  ///HORA

  @override
  State<NewClass> createState() => _NewClassState();
}
class _NewClassState extends State<NewClass> {
  List<String> items = ['Salon', 'Cubiculo', 'Salon Matematicas'];
  List<bool> selected = [true, false, false, false];
  int last=0;
  DateTime _selectedDate=DateTime.now();
  TimeOfDay  _selectedTime=TimeOfDay .now();
    Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    }
 Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// TODO: insert button to create a new place
        title: const TextBar("Crear Nueva asesoria"),
        backgroundColor: Constants.azulClaro,
      ),
      body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFieldCons(control: widget.materia, hint: "Materia"),
              const SizedBox(height: 10.0),
              TextFieldCons(
                  control: widget.capacidad, hint: "Total de alumnos",type: TextInputType.number,),
              const SizedBox(height: 10.0),
              Text('Fecha Seleccionada: ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),               
               const SizedBox(height: 10.0),
               ElevatedButton(
                onPressed: () => _selectDate(context),
                style:  ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(
                        Constants.azulClaro),),
                child: Text('Selecciona el dia'),
                ),
                const SizedBox(height: 10.0),
                Text('Hora Seleccionada: ${_selectedTime.hour}:${_selectedTime.minute}',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),               
                const SizedBox(height: 10.0),
                ElevatedButton(
                onPressed: () => _selectTime(context),
                style:  ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(
                        Constants.azulClaro),),
                child: Text('Selecciona la hora'),
                ),
                Text("Selecciona el Lugar",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                const SizedBox(height: 10.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                      title: Text(items[index]),
                      value: selected[index],
                        onChanged: (value) {
                          setState(() {
                            selected[last]= false;
                            selected[index] = true;
                            last=index;
                          });
                        },
                    );
                  },
                ),
              ),
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
            ],
          )),
    );
  }
}
