import 'package:flutter/material.dart';
import 'package:untitled/calculaterpage.dart';

void main(){
  runApp(TipCal());
}
class TipCal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculater_page(),
    );
  }
}