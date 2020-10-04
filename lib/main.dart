import 'package:flutter/material.dart';
import 'package:multi_counter_provider/model/counter_model.dart';
import 'package:provider/provider.dart';

import 'counter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create: (context) => CounterModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: CounterScreen(),
      ),
    );
  }
}
