import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  Widget buildColorBox(String label, Color boxColor) {
    return Container(
      width: 80,
      height: 80,
      color: boxColor,
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Column and Row Layout",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColorBox("1", Colors.red),
                buildColorBox("2", Colors.green),
                buildColorBox("3", Colors.blue),
              ],
            ),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text(
                "Large Container",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColorBox("Left", Colors.purple),
                buildColorBox("Right", Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}