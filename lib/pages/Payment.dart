import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  final double total;
  final String tablename;
  Payment(this.total,this.tablename): super();
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Received"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.asset('assets/giphy.gif'),
            Text("Total: ${widget.total} DT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("Table: ${widget.tablename}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            //Text("Wait for the notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}