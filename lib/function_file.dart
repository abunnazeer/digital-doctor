import 'package:flutter/material.dart';

class Actionbtn extends StatelessWidget {
  const Actionbtn({Key? key, required Text child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red[500],
      ),
      child: const Text(
        'Sign In',
        style: TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}
