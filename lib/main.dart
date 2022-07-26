import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomepage(),
  ));
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App !"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("This is body"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.red,
            child: Center(child: Text("List of tx")),
          ),
        ],
      ),
    );
  }
}
