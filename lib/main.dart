import 'package:flutter/material.dart';

class JetConverter extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueAccent,
        height: 500,
        width: 400,
        child: Center(
          child: Text(
            "JetConverter Up and Running!",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("JetConverter"),
        ),
        body: JetConverter(),
      ),
    ),
  );
}
/*
void main() {
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JetConvertor',
      home: Scaffold(
        appBar: AppBar(
          title: Text('JetConvertor'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0, color: Colors.amber),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
*/
