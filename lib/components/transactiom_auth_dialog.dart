import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  const TransactionAuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 64, letterSpacing: 32),
      ),
      actions: [
        TextButton(
          onPressed: () {
            print('cancel');
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            print('confirm');
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
