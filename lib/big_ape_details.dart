import 'package:flutter/material.dart';

import 'big_ape.dart';

class BigApeDetails extends StatefulWidget {
  BigApe bigApe;

  BigApeDetails({Key? key, required this.bigApe}) : super(key: key);

  @override
  State<BigApeDetails> createState() => _BigApeDetailsState();
}

class _BigApeDetailsState extends State<BigApeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bigApe.name),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.bigApe.imgUrl),
              ),
            ),
            const SizedBox(height: 15.0),
            const Text(
              'Locations:',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemCount: widget.bigApe.locations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(widget.bigApe.locations[index]);
                  }
              )
            )
          ],
        ),
      ),
    );
  }

}