import 'package:flutter/material.dart';

class TextFieldCons extends StatefulWidget {
  final String start;
  final TextEditingController control;
  final String hint;
  final TextInputType type;
  final bool read;

  const TextFieldCons({ 
    Key? key,
    required this.start,
    required this.control,
    required this.hint,
    this.type = TextInputType.text,
    this.read = false,
  }) : super(key: key);

  @override
  _TextFieldConsState createState() => _TextFieldConsState();
}

class _TextFieldConsState extends State<TextFieldCons> {
  @override
  void initState() {
    // TODO: implement initState

      
    widget.control.text= widget.start;
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: widget.control,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.hint
      ),
      keyboardType: widget.type,
      readOnly:  widget.read, 
    );
  }
}
 