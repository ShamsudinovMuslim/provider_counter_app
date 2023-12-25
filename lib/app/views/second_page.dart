import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String sifra;

  const SecondPage({Key? key, required this.sifra}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 400),
        child: Center(
          child: Column(
            children: [
              Text(
                'San:${widget.sifra}', // Используйте переданное значение
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
