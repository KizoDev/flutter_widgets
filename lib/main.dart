import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animatedText.dart';
import 'package:flutter_widgets/widgets/bottomnav.dart';
import 'package:flutter_widgets/widgets/bottonsheet.dart';
import 'package:flutter_widgets/widgets/buttons.dart';
import 'package:flutter_widgets/widgets/constainer-sizebox.dart';
import 'package:flutter_widgets/widgets/disimisible.dart';
import 'package:flutter_widgets/widgets/drawer.dart';
import 'package:flutter_widgets/widgets/drawlist.dart';
import 'package:flutter_widgets/widgets/form.dart';
import 'package:flutter_widgets/widgets/listGrid.dart';
import 'package:flutter_widgets/widgets/snackbar.dart';
import 'package:flutter_widgets/widgets/alartdialong.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.blue),
      home: formwidget(),
    );
  }
}
