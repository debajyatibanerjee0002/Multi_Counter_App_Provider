import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_counter_provider/model/counter_model.dart';
import 'package:provider/provider.dart';

Widget customContainer() {
  return Consumer<CounterModel>(
    builder: (context, counterModel, child) => Container(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${counterModel.getCount}',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.red[400],
                    onPressed: () {
                      Provider.of<CounterModel>(context, listen: false)
                          .decrement();
                    },
                    child: Icon(
                      FontAwesomeIcons.arrowAltCircleDown,
                      color: Colors.white,
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.green[800],
                    onPressed: () {
                      Provider.of<CounterModel>(context, listen: false)
                          .increment();
                    },
                    child: Icon(
                      FontAwesomeIcons.arrowAltCircleUp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
