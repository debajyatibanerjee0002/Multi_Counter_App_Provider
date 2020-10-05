import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_counter_provider/model/counter_model.dart';
import 'package:multi_counter_provider/widget/container_widget.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        body: Column(
          children: [
            Expanded(
                child: Consumer<CounterModel>(
                    builder: (context, count, __) => customContainer(
                        text: count.getCount.toString(),
                        decrement: () => count.decrement(),
                        increment: () => count.increment()))),
            Expanded(
                child: Consumer<CounterModel>(
                    builder: (context, countOne, __) => customContainer(
                        text: countOne.getCount.toString(),
                        decrement: () => countOne.decrement(),
                        increment: () => countOne.increment()))),
            Expanded(
                child: Consumer<CounterModel>(
                    builder: (context, countTwo, __) => customContainer(
                        text: countTwo.getCount.toString(),
                        decrement: () => countTwo.decrement(),
                        increment: () => countTwo.increment()))),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Re-Start'),
          icon: Icon(Icons.refresh),
          onPressed: () {
            Provider.of<CounterModel>(context, listen: false).reset();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
