import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Productivity Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: sizeX,
        height: sizeY,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container (
                  height:sizeY/12,
                  width: sizeX,
                  color: Colors.red,
                  child: Text(
                    'first row',
                  ),
                ),  
              ],
            ),
            Row(
              children: <Widget>[
                Container (
                  height:sizeY/2,
                  width: sizeX,
                  color: Colors.red,
                  child: Text(
                    'Second row',
                  ),
                ),  
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container (
                  height:sizeY/4,
                  width: sizeX,
                  color: Colors.red,
                  child: Text(
                    'Third row',
                  ),
                ),  
              ],
            ),
          ],
        ),
      ),
    );
  }
}
