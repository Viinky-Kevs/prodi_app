import 'package:flutter/material.dart';

class FormValues extends StatefulWidget {
  @override
  State<FormValues> createState() => FormState();
}

class FormState extends State<FormValues>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Ingrese el nombre de la finca',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Padding(
              padding: EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}