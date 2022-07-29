import 'package:flutter/material.dart';
import 'package:personalexpense/models/transiction.dart';
import 'package:personalexpense/widgets/user_transaction.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomepage(),
  ));
}

class MyHomepage extends StatelessWidget {
  final List<Transaction> transaction = [];
  String? titleInput;
  String? amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        title: Text("Flutter App "),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("This is body"),
            ),
          ),
          UserTransaction(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
