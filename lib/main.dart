import 'package:flutter/material.dart';
import 'package:great_apes/big_ape_details.dart';

import 'big_ape.dart';

void main() {
  runApp(const BigApesApp());
}

class BigApesApp extends StatelessWidget {
  const BigApesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Big Apes',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'Big Apes'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: BigApe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BigApeDetails(bigApe: BigApe.samples[index]);
                    }
                  )
                );
              },
              child: buildApeCard(BigApe.samples[index]),
            );
          },
        ),
      )
    );
  }

  Widget buildApeCard(BigApe bigApe) {
    return Card (
      elevation: 4.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column (
          children: <Widget>[
            Image.asset(bigApe.imgUrl),
            const SizedBox(height: 14.0,),
            Text(
                bigApe.name,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),
            ),
          ],
        )
      )
    );
  }
}
