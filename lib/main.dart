import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Is Flutter better than React Native?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
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
