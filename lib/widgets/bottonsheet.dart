import 'package:flutter/material.dart';

class bottonsheetwidget extends StatelessWidget {
  const bottonsheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bottom Sheet widget',
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('show bottom sheet'),
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: true,
                  enableDrag: true,
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text('mellon'),
                          subtitle: Text('kizo'),
                        ),
                        ListTile(
                          title: Text('orange'),
                          subtitle: Text('sky'),
                        ),
                        ListTile(
                          title: Text('banana'),
                          subtitle: Text('zion'),
                        ),
                        ListTile(
                          title: Text('apple'),
                          subtitle: Text('kizo'),
                        ),
                        ListTile(
                          title: Text('tiger'),
                          subtitle: Text('zona'),
                        ),
                      ],
                    );
                  });
            },
          ),
        ));
  }
}
