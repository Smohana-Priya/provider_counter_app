import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_http/counter_provider.dart';

import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: CounterPage(),
      ),
    );
  }
}
