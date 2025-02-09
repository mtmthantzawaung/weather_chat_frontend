import 'package:flutter/material.dart';

class HelperFunction {
  static void showSnackBar(
      {required message, required BuildContext context, bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: isError ? Colors.red : Colors.green,
    ));
  }

  static void showAlert(String title, String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Ok"),
            )
          ],
        );
      },
    );
  }
}
