// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class ConverterForm extends StatefulWidget {
  @override
  State<ConverterForm> createState() => _ConverterFormState();
}

class _ConverterFormState extends State<ConverterForm> {
  double inputUnit = 0;
  double outPutUnit = 0;
  String currentUnit = "F";
  void ConverterToC() { 
   setState(() {
    outPutUnit = (inputUnit - 32) * 5 / 9;
      currentUnit = "C";
   });

    print("converter to c");
  }

  void ConverterToF() {
   setState(() {
      currentUnit = "F";
      outPutUnit = (inputUnit  * 9 / 5) + 32;
   });
    print("converter to F");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              inputUnit = double.parse(value);
            } else {
              inputUnit = 0;
            }
          },
          decoration: InputDecoration(label: Text("Enter unit")),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  ConverterToC();
                },
                child: Text("Converter to C")),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ConverterToF();
                },
                child: Text("Converter to F")),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          '$currentUnit:$outPutUnit',
          style: TextStyle(fontSize: 22),
        )
      ],
    );
  }
}
