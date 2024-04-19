import 'package:flutter/material.dart';

class drawlistwidget extends StatefulWidget {
  const drawlistwidget({super.key});

  @override
  State<drawlistwidget> createState() => _drawlistwidgetState();
}

class _drawlistwidgetState extends State<drawlistwidget> {
  String selectedvalue = 'orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('draw list widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                      value: selectedvalue,
                      isExpanded: true,
                      dropdownColor: Colors.amber,
                      icon: Icon(Icons.arrow_circle_down_rounded),
                      onChanged: (String? newvalue) {
                        setState(() {
                          selectedvalue = newvalue!;
                        });
                      },
                      items: <String>[
                        'orange',
                        'banana',
                        'mango',
                        'pawpaw',
                        'nut'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList())),
            ],
          ),
        ));
  }
}
