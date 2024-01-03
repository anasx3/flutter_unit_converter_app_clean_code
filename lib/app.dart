// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_unit_converter_app/widget/Converter_form.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Temperature Converter"),
        ),
        body: Padding(
          padding: EdgeInsets.all(23),
          child: ConverterForm(),
        ),
      ),
    );
  }
}
