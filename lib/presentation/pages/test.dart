import 'package:flutter/material.dart';

class Testx extends StatelessWidget {
  const Testx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ziad'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
