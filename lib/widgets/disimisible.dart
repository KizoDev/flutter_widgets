import 'package:flutter/material.dart';

class disimisibleWidget extends StatefulWidget {
  const disimisibleWidget({super.key});

  @override
  State<disimisibleWidget> createState() => _disimisibleWidgetState();
}

class _disimisibleWidgetState extends State<disimisibleWidget> {
  List<String> fruits = ['orange', 'mango', 'banana', 'pawpaw'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dissimisible packages'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.blue,
                  ));
                } else
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ));
              },
              key: Key(fruit),
              background: Container(color: Colors.pink),
              secondaryBackground: Container(color: Colors.purple),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ));
        },
      ),
    );
  }
}
