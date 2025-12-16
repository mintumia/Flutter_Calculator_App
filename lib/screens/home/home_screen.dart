import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../counter/presentation/counter_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Tittle ok")),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.purple,
            child: Text(counter.toString()),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Text("First Container"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Text("First Container"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.green,
            child: ElevatedButton(onPressed: (){
              counterController.increment();
            }, child: Text("Increment")),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.purple,
            child: ElevatedButton(onPressed: (){
              counterController.decrement();
            }, child: Text("Decrement")),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: ElevatedButton(onPressed: (){
              counterController.reset();
            }, child: Text("Reset")),
          ),
        ],
      ),
    );
  }
}
