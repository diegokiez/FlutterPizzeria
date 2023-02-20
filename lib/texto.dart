import 'package:flutter/material.dart';

class texto extends StatelessWidget {
  final String cadena;
  double transparencia;
  texto(this.cadena, {this.transparencia = 1});
  @override
  Widget build(BuildContext context) {
    return Text(cadena,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, transparencia),
            fontWeight: FontWeight.bold));
  }
}
