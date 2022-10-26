import 'package:bytebank2/http/webclient.dart';
import 'package:bytebank2/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';
import 'models/transaction.dart';


void main() {
  runApp(const BytebankApp());
  save(Transaction(200.0, Contact(0, 'Gui', 2000))).then((transaction) => print(transaction));

}

class BytebankApp extends StatelessWidget {
  const BytebankApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.green[900], secondary: Colors.blueAccent[700]),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const Dashboard(),
    );
  }
}


