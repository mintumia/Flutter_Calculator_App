import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider((Ref ref){

  return 0 ;

});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

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
              ref.read(counterProvider.notifier).state +=2;
            }, child: Text("Click Me")),
          ),
        ],
      ),
    );
  }
}
