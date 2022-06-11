import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'inputNumber.dart';

enum SingingCharacter { Foco, Aleatorio, Generalizado }

class FormValues extends StatefulWidget {
  const FormValues({Key? key}) : super(key:key);
  @override
  State<FormValues> createState() => FormState();
}

class FormState extends State<FormValues>{
  double _currentSliderValue = 0;
  String? _sliderStatus;
  SingingCharacter? _character = SingingCharacter.Foco;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Center(
            child: Row(
              children: [
                const Text('Permite saber tu ubicación'),
                const SizedBox(width: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 24),
                    minimumSize: const Size.fromHeight(72),
                    shape: const StadiumBorder(),
                  ),
                    onPressed: () {},
                    child: const Text('Ubicación'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Número de turiones (m²)',
            style: Theme.of(context).textTheme.headline6,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 200,
              height: 50,
              child: const NumberInput(label: 'Ingresa el número de turiones',),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Porcentaje de daño (%)',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10,),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Display the current slider value.
                Text('$_currentSliderValue'),
                CupertinoSlider(
                  key: const Key('slider'),
                  value: _currentSliderValue,
                  // This allows the slider to jump between divisions.
                  // If null, the slide movement is continuous.
                  divisions: 5,
                  // The maximum slider value
                  max: 100,
                  activeColor: CupertinoColors.systemPurple,
                  thumbColor: CupertinoColors.systemPurple,
                  // This is called when sliding is started.
                  onChangeStart: (double value) {
                    setState(() {
                      _sliderStatus = 'Sliding';
                    });
                  },
                  // This is called when sliding has ended.
                  onChangeEnd: (double value) {
                    setState(() {
                      _sliderStatus = 'Finished sliding';
                    });
                  },
                  // This is called when slider value is changed.
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Text(
                  _sliderStatus ?? '',
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Distribución',
            style: Theme.of(context).textTheme.headline6,
          ),
          Column(
            children: <Widget>[
              RadioListTile<SingingCharacter>(
                title: const Text('Foco'),
                value: SingingCharacter.Foco,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Al azar'),
                value: SingingCharacter.Aleatorio,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Generalizado'),
                value: SingingCharacter.Generalizado,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Text(
            'Número de trampas',
            style: Theme.of(context).textTheme.headline6,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 200,
              height: 50,
              child: const NumberInput(label: 'Ingresa el número de trampas',),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Tamaño y color de trampa',
            style: Theme.of(context).textTheme.headline6,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 200,
              height: 50,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '10x10 - Blanca',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}