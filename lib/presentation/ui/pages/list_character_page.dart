import 'package:flutter/material.dart';
import 'package:rick_and_morty/config/use_case_config.dart';
import 'package:rick_and_morty/presentation/helpers/async_snapshot_multi_helper.dart';

class ListCharacterPage extends StatefulWidget {
  const ListCharacterPage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _ListCharacterPageState();
}

class _ListCharacterPageState extends State<ListCharacterPage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _multiCharacterConfig = UseCaseConfig();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          key: const Key('futureBuilder'),
          future: _multiCharacterConfig.getCharacterUseCase!
              .getCharacterByID(_counter.toString()),
          builder: (context, snapshot) => asyncSnapshotMultiHelper(snapshot),
        ),
      ),
    );
  }
}
