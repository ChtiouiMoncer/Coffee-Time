import 'package:coffee_time/pages/Menu.dart';
import 'package:flutter/material.dart';
main(List<String> args) {
	runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
	return MaterialApp(
		debugShowCheckedModeBanner: false,
		title: 'Coffee Time',
		theme: ThemeData(
			primaryColor: Colors.white,
		),
    home: Menu(),
	);
  }
}

	// primaryColor: Color.fromRGBO(93,64,55 ,1),