import 'dart:async';

import 'package:calculator_app/counter/presentation/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../user/presentation/user_provider.dart';



class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends ConsumerState<HomeScreen> {
  late final TextEditingController _controller;




  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

  }



  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterProvider);
    final counterController = ref.watch(counterProvider.notifier);
    final user = ref.watch(userProvider);
    final userController = ref.watch(userProvider.notifier);
    final _numberNotifier = useState(0);
    final mText = useTextEditingController();


    // rebuilds ONLY when name changes
    //final userName = ref.watch(userProvider.select((user) => user.name));
   // final userName = ref.watch(userProvider.select((u) => u.name));

    /*useEffect(() {
      if(_numberNotifier.value <10){
        final _timer = Timer.periodic(Duration(seconds: 1), (time) {
          _numberNotifier.value ++;
         // debugPrint(_numberNotifier.value.toString());
          return time.cancel();
        });
      }
      return null;
    }, [_numberNotifier.value]);*/


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Title OK"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Container(color:Colors.blue, child: Text("fsdf $counter",),),
            _box(user.last.name, Colors.yellow),
            _box(user.last.id.toString(), Colors.red),



            Container(color: Colors.blue, child: ElevatedButton(onPressed: (){counterController.increment();}, child: Text("data")),),
            //_button("Decrement", Colors.green,counterController.decrement),

            //_button("Reset Counter", Colors.indigo, counterController.reset),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: mText,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter name",
                ),
                onChanged: (value) {
                  userController.updateName(user.last.id,value);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _box(String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: color,
      child: Text(text),
    );
  }

  Widget _button(String text, Color color, VoidCallback onPressed) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: color,
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }

  Widget _mintuButton(String info, Color color){
    return Container(
      color: color,
      padding: EdgeInsets.all(10),
      child: Text(info),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../counter/presentation/counter_provider.dart';
import '../../user/data/user_service.dart';
import '../../user/presentation/user_provider.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier();
});

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ConsumerStatefulHomeScreen();
}

class ConsumerStatefulHomeScreen extends ConsumerState<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      ref.read(userProvider.notifier).changeName(_controller.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterProvider);
    final counterController = ref.read(counterProvider.notifier);

    final user = ref.watch(userProvider).name;
    final userController = ref.read(userProvider.notifier);
    final nameController = TextEditingController();

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
              child: Text("Reset"),
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
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value){
                ref.read(userProvider.notifier).changeName(value);
              },
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            color: Colors.indigo,
            child: ElevatedButton(
              onPressed: () {
                counterController.reset();
              },
              child: Text(user.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
*/
