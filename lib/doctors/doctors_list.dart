import 'package:flutter/material.dart';

class DoctorsListIndex extends StatelessWidget {
  const DoctorsListIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.chat_bubble_outline),
              ],
            )
          ],
        ),
      ),
    );
  }
}
