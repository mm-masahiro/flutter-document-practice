import 'package:flutter/material.dart';
import 'package:myapp/countstop.dart';
import 'package:provider/provider.dart';


class CountReset extends StatelessWidget {
  const CountReset({Key  key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<CountStop>().countreset}',
    );
  }
}