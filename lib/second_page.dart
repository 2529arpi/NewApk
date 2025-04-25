import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _SimpleHomePageState createState() => _SimpleHomePageState();
}

class _SimpleHomePageState extends State<HomePage> {
  String displayText = 'Hello, Flutter!';
  TextEditingController inputController = TextEditingController();

  void _updateText() {
    setState(() {
      displayText = inputController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              displayText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              controller: inputController,
              decoration: InputDecoration(
                labelText: 'Enter new text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateText,
              child: Text('Update Text'),
            ),
          ],
        ),
      ),
    );
  }
}
