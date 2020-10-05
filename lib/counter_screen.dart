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
                    builder: (_, count, __) => customContainer(
                          text: count.getCountOne.toString(),
                          decrement: () => count.decrementOne(),
                          increment: () => count.incrementOne(),
                        ))),
            Expanded(
                child: Consumer<CounterModel>(
                    builder: (_, countOne, __) => customContainer(
                          text: countOne.getCount.toString(),
                          decrement: () => countOne.decrement(),
                          increment: () => countOne.increment(),
                        ))),
            Expanded(
                child: Consumer<CounterModel>(
                    builder: (_, countTwo, __) => customContainer(
                          text: countTwo.getCountTwo.toString(),
                          decrement: () => countTwo.decrementTwo(),
                          increment: () => countTwo.incrementTwo(),
                        ))),
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
