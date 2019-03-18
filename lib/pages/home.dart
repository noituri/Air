import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            FlareActor(
              "assets/progress.flr",
              alignment:Alignment.center,
              fit:BoxFit.contain,
              animation: "0to100"
            ),
          ],
        ),
      ),
    );
  }
}