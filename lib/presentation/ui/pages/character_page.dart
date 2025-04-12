import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/use_case_config.dart';
import '../../../domain/model/character/character.dart';
import '../../helpers/async_snapshot_character_helper.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key, required this.title});

  final String title;

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter != 1) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var characterConfig = UseCaseConfig();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Character Id:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Card(
                child: FutureBuilder(
              key: const Key('futureBuilder'),
              future: characterConfig.getCharacterUseCase!
                  .getCharacterByID(_counter.toString()),
              builder:
                  (BuildContext context, AsyncSnapshot<Character> snapshot) =>
                      asyncSnapshotCharacterHelper(snapshot),
            )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              right: 15,
              bottom: 20,
              child: FloatingActionButton(
                heroTag: 'next',
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.navigate_next),
              )),
          Positioned(
              left: 45,
              bottom: 20,
              child: FloatingActionButton(
                heroTag: 'back',
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.navigate_before),
              )),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
