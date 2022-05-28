import 'package:flutter/material.dart';
void main() => runApp(MyApp());
/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

//First Page
class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
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
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
            },
            icon: Icon(
                Icons.download),
            label: Text('Click to go to second page')),
      ),
    );
  }

}


//Second Page
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}
class _Screen2State extends State<Screen2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Navigate To A New Page',
            style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('Go To Home'),
        ),
      ),
    );
  }

}