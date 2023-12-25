import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/app/provider/counter_provider.dart';
import 'package:provider_counter_app/app/views/second_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'San:${context.watch<CounterProvider>().value.toString()}',
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().decrementCounter();
                  },
                  child: Icon(Icons.remove)),
              SizedBox(
                width: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().incrementCounter();
                  },
                  child: Icon(Icons.add)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                _navigateToSecondPage(context);
              },
              child: Icon(Icons.skip_next))
        ],
      )),
    );
  }

  void _navigateToSecondPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(
          sifra: context.read<CounterProvider>().value.toString(),
        ),
      ),
    );
  }
}
