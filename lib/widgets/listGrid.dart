import 'dart:collection';

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['mango', 'guava', 'orange', 'banana'];
  Map fruits_person = {
    'fruits': ['mango', 'guava', 'orange', 'banana'],
    'names': ['zona', 'kizo', 'kings', 'Ariso']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('List and Grid'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          // child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         onTap: () {
          //           print((fruits_person['fruits'][index]));
          //         },
          //         leading: Icon(Icons.person),
          //         title: Text(fruits_person['fruits'][index]),
          //         subtitle: Text(fruits_person['names'][index]),
          //       ),
          //     );
          //   },
          // ),

          //     child: GridView(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     childAspectRatio: 2 / 3,
          //   ),
          //   children: [
          //     Card(
          //       child: Center(child: Text("orange")),
          //     )
          //   ],
          // )
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text(fruits[index]),
              );
            },
          ),
        ));
  }
}
