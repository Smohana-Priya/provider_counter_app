import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_http/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context, listen: false);

    ///its doesnot rebuilds every time because listen is false and i used consumer
    return Scaffold(
        body: Center(
          child: Consumer<CounterProvider>(builder: (context, data, child) {
            return Text(
              '${data.count}',
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter.increment,
          child: const Icon(Icons.plus_one),
        ));
  }
}
