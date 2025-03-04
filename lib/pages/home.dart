import 'package:flutter/material.dart';
import 'package:mobile/graphql/character.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: const CharacterList(),
    );
  }
}

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
              child: Text("it would appear so", selectionColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
