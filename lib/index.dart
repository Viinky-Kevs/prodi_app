import 'package:flutter/material.dart';

class IndexHome extends StatelessWidget{
  const IndexHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Row(
            children: [Text('Pro-diplosis toma de datos',
                style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
              textAlign: TextAlign.center,),],
        ),
      ),
    );
  }
}