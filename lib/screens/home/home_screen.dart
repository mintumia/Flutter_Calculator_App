import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../counter/presentation/counter_provider.dart';
import '../../user/data/user_service.dart';
import '../../user/presentation/user_provider.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier();
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    final user = ref.watch(userProvider);
    final userController = ref.read(userProvider.notifier);
    final  nameController = TextEditingController();

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
            child: ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: Text("Increment"),
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: ElevatedButton(
              onPressed: () {
                counterController.reset();
              },
              child: Text(nameController.value.toString()),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: ElevatedButton(
              onPressed: () {
                counterController.reset();
              },
              child: Text(user.age.toString()),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: ElevatedButton(
              onPressed: () {
                userController.increaseAge();
              },
              child: Text("Increse Age"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),

              controller: nameController,
            ),
          ),
        ],
      ),
    );
  }
}
