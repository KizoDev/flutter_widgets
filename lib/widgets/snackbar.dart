import 'package:flutter/material.dart';

class snackbarWidgeet extends StatelessWidget {
  const snackbarWidgeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("snackbar widget"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                    action: SnackBarAction(
                        label: "undo",
                        textColor: Colors.black,
                        onPressed: () {}),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.red,
                    duration: const Duration(milliseconds: 8000),
                    content: Text('this is an error'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('show snackbar')),
        ),
      ),
    );
  }
}
