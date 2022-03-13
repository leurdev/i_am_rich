import 'package:flutter/material.dart';

void main() => runApp(const IAmRich());

class IAmRich extends StatelessWidget {
  const IAmRich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'I Am Rich',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 300,
            width: 100,
            child: Center(
              child: Image.asset('my_diamond.png'),
            ),
          );
        },
      ),
    );
  }
}
