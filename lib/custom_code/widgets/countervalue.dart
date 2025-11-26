// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Countervalue extends StatefulWidget {
  const Countervalue({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Countervalue> createState() => _CountervalueState();
}

class _CountervalueState extends State<Countervalue> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      GestureDetector(
          onTap: () {
            setState(() {
              if (count > 1) count--;
            });
          },
          child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffF8F8F8),
              child: Icon(
                color: Colors.black,
                Icons.remove,
                size: 15,
              ))),
      Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Text(
          '$count',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffF8F8F8),
              child: Icon(
                color: Colors.black,
                Icons.add,
                size: 15,
              ))),
    ]);
  }
}
