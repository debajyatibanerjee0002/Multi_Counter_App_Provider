import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_counter_provider/model/counter_model.dart';
import 'package:provider/provider.dart';

Widget customContainer({String text, Function increment, Function decrement}) {
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Text(
              text,
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
                  onPressed: decrement,
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
                  onPressed: increment,
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
  );
}
