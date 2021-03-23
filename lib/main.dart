import 'package:flutter/material.dart';
import 'Services/Wiew.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  static final clientId = "69c3448cf52920b";
  final clientSecret = "7109f60b96d1b7ba9c967ba2d142d8a58e933e9e";
  final authorizationUrl = Uri.parse(
      'https://api.imgur.com/oauth2/authorize?client_id=$clientId&response_type=token');
  final tokenEndpoint = Uri.parse('https://api.imgur.com/oauth2/token');
  final redirectUrl = 'http://localhost:50565/oauth2/callback';

  var page = false;

  void changePage() {
    setState(() {
      page = !page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: page ? Text("Poutre") : displayWiew(),
        
        floatingActionButton: FloatingActionButton(onPressed: changePage),
      );
  }
}
