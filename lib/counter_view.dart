import 'package:flutter/material.dart';
import 'counter.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Counter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count: \${counter.count}', key: const Key('counterText')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    key: const Key('incrementButton'),
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        counter.increment();
                      });
                    },
                  ),
                  IconButton(
                    key: const Key('decrementButton'),
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        counter.decrement();
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}