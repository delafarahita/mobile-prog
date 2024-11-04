import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dela Farahita Zain - 2241720058',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
