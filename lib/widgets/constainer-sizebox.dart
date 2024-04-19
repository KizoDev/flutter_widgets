import 'package:flutter/material.dart';

class Container_sidebox extends StatelessWidget {
  const Container_sidebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('container and sizedbox'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20, spreadRadius: 20, color: Colors.indigo)
              ]),
          child: Center(
            child: Text(
              'hello nigeria',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 50,
      //     child: Text('hello world'),
      //   ),
      // ),
    );
  }
}
