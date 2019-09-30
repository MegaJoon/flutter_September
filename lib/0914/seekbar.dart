import 'package:flutter/material.dart';
//import 'package:seekbar/seekbar.dart';

class SeekbarTest extends StatefulWidget {
  @override
  _SeekbarTestState createState() => _SeekbarTestState();
}

class _SeekbarTestState extends State<SeekbarTest> {
  @override
  Widget build(BuildContext context) {
    bool _value1 = false;
    bool _value2 = false;

    void _onChanged1(bool value) => setState(() => _value1 = value);
    void _onChanged2(bool value) => setState(() => _value2 = value);


    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            new Switch(value: _value1, onChanged: _onChanged1),
            new SwitchListTile(
              value: _value2,
              onChanged: _onChanged2,
              title: new Text('Hello World', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            )
          ],
        ),
      ),
    );
  }
}
