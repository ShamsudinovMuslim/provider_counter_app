import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/app/provider/counter_provider.dart';
import 'package:provider_counter_app/app/views/home_page.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
