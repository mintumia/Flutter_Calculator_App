import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'user_provider.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('User Example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ID: ${user.id}', style: const TextStyle(fontSize: 18)),
            Text('Name: ${user.name}', style: const TextStyle(fontSize: 18)),
            Text('Age: ${user.age}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).increaseAge();
              },
              child: const Text('Increase Age'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).changeName('Alex');
              },
              child: const Text('Change Name'),
            ),
          ],
        ),
      ),
    );
  }
}