import 'package:flutter/material.dart';

class alartDialogwidget extends StatelessWidget {
  const alartDialogwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(color: Colors.redAccent, child: Text('Alart dialong')),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('show alart'),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('this is an alart'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('this is a demo'),
              Text('this is a demo'),
              Text('this is a demo')
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: Text('Approved')),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel')),
        ],
      );
    },
  );
}
