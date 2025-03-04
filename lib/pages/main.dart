import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
