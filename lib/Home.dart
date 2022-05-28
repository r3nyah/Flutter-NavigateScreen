import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Hero>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Navigate To A New Page',
        style: TextStyle(color: Colors.grey)),
        centerTitle: true,
        backgroundColor: Colors.purple[900],
      ),
      body: Center(
        child: FlatButton.icon(
          onPressed: (){},
          icon: Icon(
          Icons.download),
          label: Text('Click to go to second page')),
      ),
    );
  }

}